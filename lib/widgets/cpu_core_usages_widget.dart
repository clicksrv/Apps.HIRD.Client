import 'package:flutter/material.dart';
import 'package:hwinfo_remote_display/generated/sensorcomms.pb.dart';
import 'package:hwinfo_remote_display/widgets_lib.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CpuCoreUsagesWidget extends StatelessWidget {
  CpuCoreUsagesWidget({Key? key, required this.coreUsages}) : super(key: key);

  final List<ReadingData> coreUsages;

  late final int count = coreUsages.length;

  @override
  Widget build(BuildContext context) {
    return CenteredColumn(
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: count,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var usageReadings = coreUsages[index];

              return SfLinearGauge(
                orientation: LinearGaugeOrientation.vertical,
                axisTrackStyle:
                    const LinearAxisTrackStyle(color: Colors.black12),
                showTicks: false,
                ranges: const [
                  LinearGaugeRange(
                    startValue: 0,
                    endValue: 100,
                    color: Colors.transparent,
                  )
                ],
                showLabels: false,
                barPointers: [
                  LinearBarPointer(
                    value: usageReadings.current,
                    color: Colors.blue,
                    position: LinearElementPosition.cross,
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 6),
        Text('Core Usages', style: Theme.of(context).textTheme.overline)
      ],
    );
  }
}
