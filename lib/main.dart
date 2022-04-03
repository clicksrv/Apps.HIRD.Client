import 'dart:async';
import 'dart:developer';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:hwinfo_remote_display/common.dart';
import 'package:hwinfo_remote_display/constants.dart';
import 'package:hwinfo_remote_display/models/server_info.dart';
import 'package:hwinfo_remote_display/pages/data_visualizer_page.dart';
import 'package:hwinfo_remote_display/pages/no_connectivity_page.dart';
import 'package:hwinfo_remote_display/pages/select_server_page.dart';
import 'package:hwinfo_remote_display/services/server_scanner_service.dart';
import 'package:hwinfo_remote_display/settings.dart';
import 'package:wakelock/wakelock.dart';

// MOBILE APPS
// For smartphone apps, please add a link to https://icons8.com in the about section or settings.
//
// Also, please credit our work in your App Store or Google Play description (something like "Icons by Icons8" is fine).

const minPrintLevel = PrintLevel.info;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Settings _settings = Settings();

  ConnectivityResult _connectionStatus = ConnectivityResult.none;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    initConnectivity();

    try {
      FlutterDisplayMode.setHighRefreshRate();
    } on PlatformException {
      logger('HRR not supported.');
    }

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  Future<void> initConnectivity() async {
    late ConnectivityResult result;

    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      log('Couldn\'t check connectivity status', error: e);
      return;
    }

    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectionStatus = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    final initTheme =
        _settings.theme == Brightness.dark ? darkTheme : lightTheme;

    return ThemeProvider(
      initTheme: initTheme,
      builder: (_, _theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: Constants.appName,
          theme: _theme,
          home: _connectionStatus == ConnectivityResult.ethernet ||
                  _connectionStatus == ConnectivityResult.wifi
              //? buildVisualizerDirectly('192.168.0.242')
              ? const SelectServerPage()
              : const NoConnectivityPage(),
        );
      },
    );
  }

  FutureBuilder<ServerInfo> buildVisualizerDirectly(String ip) {
    Wakelock.enable();
    return FutureBuilder<ServerInfo>(
      future: ServerScannerService().getServerInfo(ip),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator();
        }
        ServerScannerService().pause('Direct Visualizer');
        return DataVisualizerPage(
          serverInfo: snapshot.data!,
        );
      },
    );
  }
}
