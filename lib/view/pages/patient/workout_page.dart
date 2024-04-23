import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/gen/colors.gen.dart';
import 'package:gluco_guide/translations/locale_keys.g.dart';
import 'package:gluco_guide/view/atoms/app_loading.dart';
import '../../../core/models/workout_data_model.dart';
import '../../../gen/assets.gen.dart';
import '../../molcules/no_data.dart';
import '../../molcules/workout_list_tile_card.dart';
import 'auth/workout_details_page.dart';

final AutoDisposeFutureProvider<List<WorkoutData>?>
    getAllWorkoutFutureProvider =
    FutureProvider.autoDispose<List<WorkoutData>?>(
        (AutoDisposeFutureProviderRef<List<WorkoutData>?> ref) {
  List<WorkoutData> workoutList = <WorkoutData>[
    WorkoutData(
        id: 1,
        imageUrl: Assets.images.workout.workout1.path,
        name: "Squat Movement Exercise",
        desc:
            "10 min | intermediate"),
    WorkoutData(
        id: 2,
        imageUrl: Assets.images.workout.workout2.path,
        name: "Full Body Stretching ",
        desc:
            "6 min | intermediate"),
    WorkoutData(
        id: 3,
        imageUrl: Assets.images.workout.workout3.path,
        name: "Yoga woman Exercise",
        desc:
            "8 min | intermediate"),
    WorkoutData(
        id: 4,
        imageUrl: Assets.images.workout.workout4.path,
        name: "Yoga Movement Exercise",
        desc:
            "10 min | intermediate "),
    WorkoutData(
        id: 5,
        imageUrl: Assets.images.workout.workout5.path,
        name: "Abdominal Exercise",
        desc:"15 min | intermediate"),
    WorkoutData(
        id: 6,
        imageUrl: Assets.images.workout.workout1.path,
        name: "Squat Movement Exercise",
        desc:
        "10 min | intermediate"),
    WorkoutData(
        id: 7,
        imageUrl: Assets.images.workout.workout2.path,
        name: "Full Body Stretching ",
        desc:
        "6 min | intermediate"),
    WorkoutData(
        id: 8,
        imageUrl: Assets.images.workout.workout3.path,
        name: "Yoga woman Exercise",
        desc:
        "8 min | intermediate"),
    WorkoutData(
        id: 9,
        imageUrl: Assets.images.workout.workout4.path,
        name: "Yoga Movement Exercise",
        desc:
        "10 min | intermediate "),
    WorkoutData(
        id: 10,
        imageUrl: Assets.images.workout.workout5.path,
        name: "Abdominal Exercise",
        desc:"15 min | intermediate")
  ];
  return workoutList;
});

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer(
            builder:
                (BuildContext context, WidgetRef ref, Widget? child) {
              return
                ref.watch(getAllWorkoutFutureProvider).when(data: (List<WorkoutData>? workoutList) {
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
                      ref.invalidate(getAllWorkoutFutureProvider);
                    },
                  );
                },
                    loading: () => const AppLoading());
            });
  }
}
