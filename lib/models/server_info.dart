import 'package:hird/generated/sensorcomms.pbgrpc.dart';

class ServerInfo {
  String ip;
  SensorServiceClient client;
  ComputerInfo info;

  ServerInfo(this.ip, this.client, this.info);
}
