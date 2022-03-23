import 'package:hwinfo_remote_display/generated/sensorcomms.pbgrpc.dart';

class ServerInfo {
  String ip;
  SensorServiceClient client;
  ComputerInfo info;

  ServerInfo(this.ip, this.client, this.info);
}
