import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/view/molcules/gluco_guide_app_bar.dart';
import '../../../core/models/notification_data_model.dart';
import '../../../core/services/log_manager.dart';
import '../../../gen/assets.gen.dart';
import '../../../translations/locale_keys.g.dart';
import '../../atoms/app_loading.dart';
import '../../molcules/no_data.dart';
import '../../molcules/notification_card.dart';

final AutoDisposeFutureProvider<List<NotificationData>?>
notificationsFutureProvider =
FutureProvider.autoDispose<List<NotificationData>?>(
        (AutoDisposeFutureProviderRef<List<NotificationData>?> ref) {
      List<NotificationData> workoutList = <NotificationData>[
        NotificationData(
            id: 1,
            imageUrl: Assets.images.workout.workout1.path,
            name: "Dr. Mohamed",
            desc:
            "Dr. Mohamed Wants to give you some advices."),
        NotificationData(
            id: 2,
            imageUrl: Assets.images.workout.workout2.path,
            name: "Dr. Ahmed",
            desc:
            "Your heartbeat reading indicates that there is a problem with your health. Please contact me"),
      ];
      return workoutList;
    });
class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GlucoGuideAppBar(
          text: LocaleKeys.notifications.tr(),
        ),
        body: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              return ref.watch(notificationsFutureProvider).when(
                  skipLoadingOnRefresh: false,
                  skipLoadingOnReload: false,
                  data: (List<NotificationData?>? notificationList) {
                    // LogManager.logToConsole(notificationList?.length);
                    return notificationList?.isEmpty == true
                        ? NoData(
                      title: LocaleKeys.emptyWithInput
                          .tr(args: <String>["Notifications"]),
                    )
                        : ListView.separated(
                        separatorBuilder: (_, __) => context.vSpaceBox16,
                        itemCount: notificationList?.length ?? 0,
                        itemBuilder: (BuildContext context, int index) {
                          NotificationData? notification =
                          notificationList?[index];
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                            child: Slidable(
                              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                extentRatio: 1 / 4,
                                children: <CustomSlidableAction>[
                                  CustomSlidableAction(
                                    child: const Icon(Icons.delete),
                                    onPressed: (_) async {
                                      LogManager.logToConsole("delete");
                                      OkCancelResult delReq =
                                      await showOkCancelAlertDialog(
                                        context: context,
                                        message: LocaleKeys.deleteMessage.tr(),
                                        isDestructiveAction: true,
                                        barrierDismissible: false,
                                        okLabel: LocaleKeys.delete.tr(),
                                        title: LocaleKeys.deletePropertyInput
                                            .tr(args: <String>[
                                          // notification?.title ?? ""
                                          ""
                                        ]),
                                      );
                                      if (delReq == OkCancelResult.cancel) {
                                        return;
                                      }
                                      // ref.watch(deletePropertyFutureProvider(
                                      //     notification?.id));
                                    },
                                  ),
                                ],
                              ),
                              child: NotificationCard(
                                title: notification?.name,
                                desc: notification?.desc,
                                onAcceptNotification: () async {
                                  // ref
                                  //     .read(notificationStateNotifierProvider
                                  //     .notifier)
                                  //     .updateBookingStatus(
                                  //     bookingId: notification?.bookingId,
                                  //     status: "accepted",
                                  //     notificationId: notification?.id);
                                },
                                onDeclineNotification: () async {
                                  // ref
                                  //     .read(notificationStateNotifierProvider
                                  //     .notifier)
                                  //     .updateBookingStatus(
                                  //     bookingId: notification?.bookingId,
                                  //     status: "rejected",
                                  //     notificationId: notification?.id);
                                },
                              ),
                            ),
                          );
                        });
                  },
                  error: (Object error, StackTrace stackTrace) {
                    LogManager.logToConsole(error, "error");
                    return const Center(
                      child: Text(
                        "We couldn't load Notifications",
                      ),
                    );
                  },
                  loading: () => const AppLoading());
            }));
  }
}
