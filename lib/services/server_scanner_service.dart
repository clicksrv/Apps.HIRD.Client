import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hwinfo_remote_display/common.dart';
import 'package:hwinfo_remote_display/constants.dart';
import 'package:hwinfo_remote_display/generated/sensorcomms.pb.dart';
import 'package:hwinfo_remote_display/models/server_info.dart';
import 'package:hwinfo_remote_display/services/sensor_client_service.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:ping_discover_network/ping_discover_network.dart';

class ServerScannerService {
  static final ServerScannerService _singleton =
      ServerScannerService._internal();

  factory ServerScannerService() {
    return _singleton;
  }

  ServerScannerService._internal() {
    _isStarted = true;

    _controller = StreamController();
    _activeStream = _controller.stream.asBroadcastStream();

    logger('Starting continuous scan');
    Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_isStarted) {
        _scan().listen((event) => _controller.add(event));
      }
    });
  }

  late StreamController<List<ServerInfo>> _controller;
  late Stream<List<ServerInfo>> _activeStream;

  final _info = NetworkInfo();
  final List<ServerInfo> _servers = [];

  bool _isStarted = false;
  bool _isScanning = false;

  Stream<List<ServerInfo>> get stream => _activeStream;

  void pause(String by) {
    logger('Pause requested by $by');

    if (!_isStarted) {
      return;
    }

    logger('Pausing stream');
    _isStarted = false;
  }

  void resume(String by) {
    logger('Resume requested by $by');

    if (_isStarted) {
      return;
    }

    logger('Resuming stream');
    _isStarted = true;
  }

  Stream<List<ServerInfo>> _scan() async* {
    if (_isScanning || !_isStarted) {
      return;
    }

    _isScanning = true;

    logger('Starting scan');

    var ip = await _info.getWifiIP();

    final analyzerStream = NetworkAnalyzer.discover2(
        ip!.substring(0, ip.lastIndexOf('.')), Constants.serverPort,
        timeout: const Duration(seconds: 2));

    await for (final addr in analyzerStream) {
      logger('Analyzing: ${addr.ip}', PrintLevel.trace);
      if (!addr.exists && _servers.any((server) => server.ip == addr.ip)) {
        logger('Server no longer available: ${addr.ip}');
        _servers.removeWhere((element) => element.ip == addr.ip);
        yield _servers;
      } else if (addr.exists &&
          !_servers.any((server) => server.ip == addr.ip)) {
        logger('Server available: ${addr.ip}');
        ServerInfo serverInfo = await getServerInfo(addr.ip);
        _servers.add(serverInfo);
        yield _servers;
      }
    }

    logger('Scan finished');
    _isScanning = false;
  }

  Future<ServerInfo> getServerInfo(String ip) async {
    logger('Getting server Info for $ip');
    final client = getClient(ip);
    final compInfo = await client.getComputerInfo(ComputerInfoRequest());
    return ServerInfo(ip, client, compInfo);
  }
}
