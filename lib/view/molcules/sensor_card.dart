import 'package:flutter/material.dart';
import 'package:gluco_guide/view/molcules/no_data.dart';

class SensorCard extends StatelessWidget {
  const SensorCard({super.key, this.sensorValue, this.onTap, this.internalIcon});
  final String? sensorValue;
  final VoidCallback? onTap;
  final Widget? internalIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: NoData(title:sensorValue ??"",onTap: onTap,internalIcon: internalIcon,),
      ),

    );
  }
}
