import 'dart:io';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:hwinfo_remote_display/common.dart';
import 'package:hwinfo_remote_display/generated/sensorcomms.pbgrpc.dart';
import 'package:hwinfo_remote_display/models/server_info.dart';
import 'package:hwinfo_remote_display/services/server_scanner_service.dart';
import 'package:hwinfo_remote_display/widgets/cpu_core_temps_widget.dart';
import 'package:hwinfo_remote_display/widgets/cpu_core_usages_widget.dart';
import 'package:hwinfo_remote_display/widgets/cpu_temp_gauge.dart';
import 'package:hwinfo_remote_display/widgets/gpu_temp_gauge.dart';
import 'package:hwinfo_remote_display/widgets/storage_temp_gauge.dart';
import 'package:hwinfo_remote_display/widgets_lib.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:wakelock/wakelock.dart';

const cardPadding = EdgeInsets.symmetric(horizontal: 12, vertical: 6);

class DataVisualizerPage extends StatefulWidget {
  const DataVisualizerPage({Key? key, required this.serverInfo})
      : super(key: key);

  final ServerInfo serverInfo;

  ComputerInfo get computerInfo => serverInfo.info;

  SensorServiceClient get client => serverInfo.client;

  String get ip => serverInfo.ip;

  @override
  State<DataVisualizerPage> createState() => _DataVisualizerPageState();
}

class _DataVisualizerPageState extends State<DataVisualizerPage> {
  late ScrollController _scrollController;
  late ScrollController _gridScrollController;
  final ServerScannerService _service = ServerScannerService();
  final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  bool _streamLoaded = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    _gridScrollController = ScrollController();
    super.initState();
    BackButtonInterceptor.add(_popInterceptor);
  }

  @override
  void dispose() {
    BackButtonInterceptor.remove(_popInterceptor);
    super.dispose();
  }

  bool _popInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    _onPop();
    return false;
  }

  void _onPop() {
    _service.resume('closing Visualizer');
    Wakelock.disable();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenteredColumn(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Navigator.of(context).canPop()
                      ? IconButton(
                          onPressed: () {
                            _onPop();
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.keyboard_arrow_left))
                      : const SizedBox(width: 16),
                  Text(
                    widget.serverInfo.info.computerName,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  ThemeSwitcher(
                    clipper: const ThemeSwitcherCircleClipper(),
                    builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          SystemChrome.setEnabledSystemUIMode(
                              SystemUiMode.immersive);
                        },
                        child: const Icon(Icons.fullscreen),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder<BaseDeviceInfo>(
              future: deviceInfo.deviceInfo,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return buildWaitingView(context);
                }

                return StreamBuilder<ReadingDataStream>(
                  stream: widget.client.monitor(
                      MonitorRequest(
                          deviceName: Platform.isAndroid
                              ? (snapshot.data as AndroidDeviceInfo).device
                              : (snapshot.data as IosDeviceInfo).name),
                      options: CallOptions(timeout: const Duration(days: 30))),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      if (!_streamLoaded) {
                        return buildWaitingView(context);
                      } else if (!Navigator.canPop(context)) {
                        SystemNavigator.pop(animated: true);
                        return Container();
                      } else {
                        _onPop();
                        Navigator.of(context).pop();
                        return Container();
                      }
                    } else if (snapshot.hasError) {
                      return buildErrorView(context);
                    } else {
                      return OrientationBuilder(
                        builder: (context, orientation) {
                          _streamLoaded = true;
                          return ListView.builder(
                            itemCount: 5,
                            controller: _scrollController,
                            itemBuilder: (context, index) {
                              switch (index) {
                                case 0:
                                  return buildCpuCard(context, snapshot.data!);
                                case 1:
                                  return buildGpuCard(context, snapshot.data!);
                                case 2:
                                  return buildRamCard(context, snapshot.data!);
                                case 3:
                                  return buildSystemCard(
                                      context, snapshot.data!);
                                case 4:
                                  return buildStorageCard(
                                      context, snapshot.data!);
                                default:
                                  return const Center(
                                    child:
                                        Text('You should not be seeing this!'),
                                  );
                              }
                            },
                          );
                        },
                      );
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWaitingView(BuildContext context) {
    return CenteredColumn(
      children: [
        const CircularProgressIndicator(),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(height: 10),
        ),
        Text('Waiting for data...',
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(fontStyle: FontStyle.italic))
      ],
    );
  }

  Widget buildErrorView(BuildContext context) {
    return CenteredColumn(
      children: [
        Text('Some error occured :(',
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.redAccent)),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Widget buildStorageCard(BuildContext context, ReadingDataStream streamData) {
    return Padding(
      padding: cardPadding,
      child: ExpandableFloatCard(
        title: 'Storage',
        subtitle: widget.computerInfo.storageNames.length > 1
            ? '${widget.computerInfo.storageNames.length} devices'
            : '1 device',
        assetImageName: 'assets/hw/m2_ssd.png',
        body: SizedBox(
          height: 200,
          child: GridView.builder(
            controller: _gridScrollController,
            padding: const EdgeInsets.all(6),
            itemCount: widget.computerInfo.storageNames.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return CenteredColumn(
                children: [
                  StorageTempGauge(
                      reading: streamData.systemReadings.storageTemps[index],
                      label: widget.computerInfo.storageTypes[index].name),
                  Text(widget.computerInfo.storageNames[index]),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildSystemCard(BuildContext context, ReadingDataStream streamData) {
    return Padding(
      padding: cardPadding,
      child: ExpandableFloatCard(
        title: 'System',
        subtitle: widget.computerInfo.systemMake,
        assetImageName: 'assets/hw/mobo.png',
        body: CenteredColumn(
          children: [
            Text(
                '${streamData.systemReadings.power.current.toStringAsFixed(2)} W',
                style: Theme.of(context).textTheme.titleLarge),
            Text(
              'Power Draw',
              style: Theme.of(context).textTheme.overline,
            ),
            const Divider(),
            Text(
                '${streamData.systemReadings.chargeLevel.current.toStringAsFixed(2)} %',
                style: Theme.of(context).textTheme.titleLarge),
            Text(
              'Charge Level',
              style: Theme.of(context).textTheme.overline,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRamCard(BuildContext context, ReadingDataStream streamData) {
    return Padding(
      padding: cardPadding,
      child: ExpandableFloatCard(
        title: 'RAM',
        subtitle: widget.computerInfo.memory,
        assetImageName: 'assets/hw/ram.png',
        body: CenteredColumn(
          children: [
            Text(
                '${streamData.systemReadings.memoryClock.current.toStringAsFixed(2)} MHz',
                style: Theme.of(context).textTheme.titleLarge),
            Text(
              'Memory Clock Speed',
              style: Theme.of(context).textTheme.overline,
            ),
            const Divider(),
            Text(
                '${streamData.systemReadings.ramLoad.current.toStringAsFixed(2)} %',
                style: Theme.of(context).textTheme.titleLarge),
            Text(
              'RAM Usage',
              style: Theme.of(context).textTheme.overline,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGpuCard(BuildContext context, ReadingDataStream streamData) {
    return Padding(
      padding: cardPadding,
      child: ExpandableFloatCard(
        title: 'GPU',
        subtitle: widget.computerInfo.gpuName,
        assetImageName: 'assets/hw/gpu.png',
        body: CenteredColumn(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                GpuTempGauge(
                    reading: streamData.gpuReadings.temp,
                    hotspotReading: streamData.gpuReadings.hotSpotTemp),
                CenteredColumn(
                  children: [
                    Text(
                        '${streamData.gpuReadings.clock.current.toStringAsFixed(2)} MHz',
                        style: Theme.of(context).textTheme.titleLarge),
                    Text(
                      'Core Clock Speed',
                      style: Theme.of(context).textTheme.overline,
                    ),
                    const Divider(),
                    Text(
                        '${streamData.gpuReadings.memoryClock.current.toStringAsFixed(2)} MHz',
                        style: Theme.of(context).textTheme.titleLarge),
                    Text(
                      'Memory Clock Speed',
                      style: Theme.of(context).textTheme.overline,
                    ),
                    const Divider(),
                    Text(
                        '${streamData.gpuReadings.power.current.toStringAsFixed(2)} W',
                        style: Theme.of(context).textTheme.titleLarge),
                    Text(
                      'Power Draw',
                      style: Theme.of(context).textTheme.overline,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCpuCard(BuildContext context, ReadingDataStream streamData) {
    var isFanRunning = streamData.cpuReadings.fanSpeed.current > 0;
    return Padding(
      padding: cardPadding,
      child: ExpandableFloatCard(
        title: 'CPU',
        subtitle: widget.computerInfo.cpuName,
        assetImageName: 'assets/hw/cpu.png',
        body: CenteredColumn(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                CpuTempGauge(reading: streamData.cpuReadings.packageTemp),
                CenteredColumn(
                  children: [
                    Text(
                        '${streamData.cpuReadings.coreClockEffective.current.toStringAsFixed(2)} MHz',
                        style: Theme.of(context).textTheme.titleLarge),
                    Text(
                      'Effective Clock Speed',
                      style: Theme.of(context).textTheme.overline,
                    ),
                    const Divider(),
                    Text(
                        '${streamData.cpuReadings.power.current.toStringAsFixed(2)} W',
                        style: Theme.of(context).textTheme.titleLarge),
                    Text(
                      'Power Draw',
                      style: Theme.of(context).textTheme.overline,
                    ),
                    if (isFanRunning) const Divider(),
                    if (isFanRunning)
                      Text(
                          '${streamData.cpuReadings.fanSpeed.current.round()} RPM',
                          style: Theme.of(context).textTheme.titleLarge),
                    if (isFanRunning)
                      Text(
                        'Fan Speed',
                        style: Theme.of(context).textTheme.overline,
                      ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 90,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: CpuCoreTempsWidget(
                        coreTemps: streamData.cpuReadings.coreTemps),
                  ),
                  Expanded(
                    child: CpuCoreUsagesWidget(
                        coreUsages: streamData.cpuReadings.coreUsages),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
