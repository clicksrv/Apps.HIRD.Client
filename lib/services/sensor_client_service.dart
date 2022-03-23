import 'package:grpc/grpc.dart';
import 'package:hwinfo_remote_display/constants.dart';
import 'package:hwinfo_remote_display/generated/sensorcomms.pbgrpc.dart';

SensorServiceClient getClient(String ip) {
  var channel = ClientChannel(ip,
      port: Constants.serverPort,
      options:
      const ChannelOptions(credentials: ChannelCredentials.insecure()));

  return SensorServiceClient(channel,
      options: CallOptions(timeout: const Duration(seconds: 30)));
}