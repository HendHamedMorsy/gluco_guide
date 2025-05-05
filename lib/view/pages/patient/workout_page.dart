import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/core/models/workout_data_model.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/gen/assets.gen.dart';
import 'package:gluco_guide/providers/local/patient_local_provider.dart';
import 'package:gluco_guide/view/atoms/app_loading.dart';
import 'package:gluco_guide/view/molcules/no_data.dart';
import 'package:gluco_guide/view/molcules/workout_list_tile_card.dart';

import 'auth/workout_details_page.dart';
final AutoDisposeFutureProvider<List<WorkoutData>?>
    getAllWorkoutFutureProviderForDiabetesOne =
    FutureProvider.autoDispose<List<WorkoutData>?>(
        (AutoDisposeFutureProviderRef<List<WorkoutData>?> ref) {
  List<WorkoutData> workoutList = <WorkoutData>[
    WorkoutData(
        id: 1,
        imageUrl: Assets.images.workout.workout1.path,
        name: "Aerobic exercise",
        desc:
            "30 min, 3-7 days"),
    WorkoutData(
        id: 2,
        imageUrl: Assets.images.workout.workout2.path,
        name: "Resistance exercise ",
        desc:
            "8-10 ex, 1-3 set, 10-15 rep, 2-3 times/week"),
    WorkoutData(
        id: 3,
        imageUrl: Assets.images.workout.workout3.path,
        name: "Flexibility exercise",
        desc:
            " 2-3 times/week"),
  ];
  return workoutList;
});

final AutoDisposeFutureProvider<List<WorkoutData>?>
getAllWorkoutFutureProviderForDiabetesTwo =
FutureProvider.autoDispose<List<WorkoutData>?>(
        (AutoDisposeFutureProviderRef<List<WorkoutData>?> ref) {
      List<WorkoutData> workoutList = <WorkoutData>[
        WorkoutData(
            id: 1,
            imageUrl: Assets.images.workout.workout1.path,
            name: "Maintain healthy life style",
            desc:
            "30 min / day"),
        WorkoutData(
            id: 2,
            imageUrl: Assets.images.workout.workout2.path,
            name: "Loose weight ",
            desc:
            "45-60 min / day"),
        WorkoutData(
            id: 3,
            imageUrl: Assets.images.workout.workout3.path,
            name: "Gain muscle",
            desc:
            "Strength training 4-5 times a week, focusing on compound exercises such as squats, deadlifts, bench presses, and rows. Aim for 45-60 minutes per session."),
      ];
      return workoutList;
    });
class WorkoutPage extends ConsumerStatefulWidget {
  const WorkoutPage({super.key});

  @override
  ConsumerState<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends ConsumerState<WorkoutPage> {
  @override
  Widget build(BuildContext context) {
    var patientData = ref.watch(patientLocalProvider)?.diabetesType;
    return  patientData == "1" ?
    Consumer(
            builder:
                (BuildContext context, WidgetRef ref, Widget? child) {
              return
                ref.watch(getAllWorkoutFutureProviderForDiabetesOne).when(data: (List<WorkoutData>? workoutList) {
                  return ListView.separated(
                      separatorBuilder: (_, __) => context.vSpaceBox16,
                      itemCount: workoutList?.length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        WorkoutData? workoutData = workoutList?[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                          child:  WorkoutListTileCard(
                            onTap: (){
                              context.navigator.push(MaterialPageRoute(builder: (context) => const WorkoutDetailsPage()));
                            },
                            imageURL: workoutData?.imageUrl,
                              name: workoutData?.name,
                              desc:workoutData?.desc
                          ),
                        );
                      });
                }, error: (Object error, StackTrace stackTrace) {
                  return NoData(
                    title: "We couldn't load FAQ List",
                    onTap: () {
                      ref.invalidate(getAllWorkoutFutureProviderForDiabetesOne);
                    },
                  );
                },
                    loading: () => const AppLoading());
            }) :
    Consumer(
        builder:
            (BuildContext context, WidgetRef ref, Widget? child) {
          return
            ref.watch(getAllWorkoutFutureProviderForDiabetesOne).when(data: (List<WorkoutData>? workoutList) {
              return ListView.separated(
                  separatorBuilder: (_, __) => context.vSpaceBox16,
                  itemCount: workoutList?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    WorkoutData? workoutData = workoutList?[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                      child:  WorkoutListTileCard(
                          onTap: (){
                            context.navigator.push(MaterialPageRoute(builder: (context) => const WorkoutDetailsPage()));
                          },
                          imageURL: workoutData?.imageUrl,
                          name: workoutData?.name,
                          desc:workoutData?.desc
                      ),
                    );
                  });
            }, error: (Object error, StackTrace stackTrace) {
              return NoData(
                title: "We couldn't load FAQ List",
                onTap: () {
                  ref.invalidate(getAllWorkoutFutureProviderForDiabetesOne);
                },
              );
            },
                loading: () => const AppLoading());
        });
  }
}
