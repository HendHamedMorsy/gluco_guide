import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/core/services/log_manager.dart';
import 'package:gluco_guide/providers/patient/auth/providers/doctors_list_future_provider.dart';
import 'package:gluco_guide/view/atoms/app_loading.dart';
import 'package:gluco_guide/view/molcules/no_data.dart';
import '../../../core/constants/app_constants.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../molcules/sensor_card.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context,ref) {
    Future<void> _refreshData() async {
      await Future.delayed(const Duration(seconds:10));
      ref.invalidate(getSensorsDataFutureProvider);
    }
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppConstants.shared.defaultScaffoldPadding,
          child: Consumer(
            builder: (context, ref, child) => ref.watch(getSensorsDataFutureProvider).when(
                skipLoadingOnRefresh: true,
                skipLoadingOnReload: true,
                data: (data) {
              LogManager.logToConsole(data,"sensors");
              return Column(
              children: [
                SensorCard(sensorValue: data.heartRate,internalIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(Assets.icons.heartRate.path,color: ColorName.primaryColor.withOpacity(0.5),),
                )),
                context.vSpaceBox16,
                SensorCard(
                  sensorValue: data.oxygenSaturation,
                  internalIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(Assets.icons.oxygen.path,color: ColorName.primaryColor.withOpacity(0.5),),
                  ),
                ),
                context.vSpaceBox16,
                SensorCard(sensorValue: data.temperature,
                  internalIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(Assets.icons.temp.path,color: ColorName.primaryColor.withOpacity(0.5),),
                  ),),
                context.vSpaceBox25,
                FilledButton(onPressed: (){
                  ref.invalidate(getSensorsDataFutureProvider);
                }, child: const Text("Read")),
                context.vSpaceBox50
              ],
                          );
            }, error: (error, stackTrace) => const NoData(
              title: "We Can not load sensors data",
            ), loading:() => const AppLoading())
          ),
        ),
      )
    );
  }
}
