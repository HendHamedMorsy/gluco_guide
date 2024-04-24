import 'package:flutter/material.dart';
import 'package:gluco_guide/view/molcules/no_data.dart';

class SensorCard extends StatelessWidget {
  const SensorCard({super.key, this.sensorValue, this.onTap});
  final String? sensorValue;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: NoData(title:sensorValue ??"",onTap: onTap,),
      ),

    );
  }
}
