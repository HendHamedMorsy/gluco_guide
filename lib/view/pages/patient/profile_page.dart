import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/translations/locale_keys.g.dart';
import 'package:gluco_guide/view/pages/patient/faq_page.dart';
import 'package:gluco_guide/view/pages/patient/notifications_page.dart';
import '../../../gen/assets.gen.dart';
import '../../../providers/local/patient_local_provider.dart';
import '../../../providers/patient/auth/providers/patient_auth_state_notifier_provider.dart';
import '../../molcules/profile_list_tile.dart';
import '../../molcules/user_profile_avatar.dart';
import '../doctor/admin_page.dart';
import 'edit_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer(
                 builder: (context, ref, child) =>
                Center(
                  child: UserProfileAvatar(
                    isNameVisible: true,
                    imageURL: Assets.images.profileUser.path,
                    name: ref.read(patientLocalProvider)?.name,
                    email: ref.read(patientLocalProvider)?.email,
                  ),
                ),
              ),
              context.vSpaceBox50,
              ProfileListTile(
                title: LocaleKeys.editProfile.tr(),
                icon: Icons.manage_accounts_sharp,
                onTap: ()async{
                  context.navigator.push( MaterialPageRoute(builder: (context) => const EditProfilePage(),));
                },
              ),
              context.vSpaceBox16,
              ProfileListTile(
                title: LocaleKeys.notifications.tr(),
                icon: Icons.notifications,
                iconSize: 25,
                onTap: ()async{
                  context.navigator.push( MaterialPageRoute(builder: (context) => const NotificationsPage(),));
                },
              ),
              // context.vSpaceBox16,
              // ProfileListTile(
              //   title: LocaleKeys.settings.tr(),
              //   icon: Icons.settings,
              //   iconSize: 25,
              //   onTap: ()async{
              //     context.navigator.push( MaterialPageRoute(builder: (context) => const SettingsPage(),));
              //   },
              // ),
              context.vSpaceBox16,
              ProfileListTile(
                title: LocaleKeys.faq.tr(),
                icon: Icons.help,
                iconSize: 25,
                onTap: ()async{
                  context.navigator.push( MaterialPageRoute(builder: (context) => const FAQPage(),));
                },
              ),
              context.vSpaceBox50,

              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  return
                 ElevatedButton(
                    onPressed:  () async {
                      OkCancelResult delReq = await showOkCancelAlertDialog(
                          context: context,
                          message: LocaleKeys.logoutMsg.tr(),
                          isDestructiveAction: true,
                          barrierDismissible: false,
                          okLabel: LocaleKeys.yes.tr(),
                          cancelLabel: LocaleKeys.no.tr(),
                          title: LocaleKeys.logout.tr());
                      if (delReq == OkCancelResult.cancel) {
                        return;
                      }
                      ref
                          .read(patientAuthStateNotifierProvider.notifier)
                          .logOutPatient()
                          .then((_) {
                        Future<void>.delayed(const Duration(milliseconds: 100),
                                () {
                              ref.invalidate(patientAuthStateNotifierProvider);
                              ref.invalidate(patientLocalProvider);
                            });
                        context.navigator.pushReplacement(MaterialPageRoute(
                          builder: (context) => const AdminPage(),
                        ));
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.logout, color: Colors.white,),
                        context.hSpaceBox10,
                        Text(
                          LocaleKeys.logout.tr(),
                          style: context.textTheme.titleLarge
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ));}
              )
            ],
          ),
        ),
      ),
    );
  }
}
