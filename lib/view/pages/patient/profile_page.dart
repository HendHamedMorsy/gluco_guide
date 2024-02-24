import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/translations/locale_keys.g.dart';
import 'package:gluco_guide/view/pages/patient/faq_page.dart';
import 'package:gluco_guide/view/pages/patient/notifications_page.dart';
import 'package:gluco_guide/view/pages/patient/settings_page.dart';
import '../../../gen/assets.gen.dart';
import '../../molcules/profile_list_tile.dart';
import '../../molcules/user_profile_avatar.dart';
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
              Center(
                child: UserProfileAvatar(
                  isNameVisible: true,
                  imageURL: Assets.images.profileUser.path,
                  name: "Hend Hamed Morsy",
                  email: "hendhamedmorsy@gmail.com",
                ),
              ),
              context.vSpaceBox50,

              // Row(
              //   children: [
              //     UserInfoCard(
              //       title: "Weight",
              //       value: "77.8",
              //       measure: "kg",
              //       icon: Assets.icons.weight.path,
              //     ),
              //     UserInfoCard(
              //       title: "Height",
              //       value: "160",
              //       measure: "cm",
              //       icon: Assets.icons.height.path,
              //     ),
              //     UserInfoCard(
              //       title: "Age",
              //       value: "26",
              //       measure: "year",
              //       icon: Assets.icons.age.path,
              //     ),
              //   ],
              // ),
              // context.vSpaceBox16,
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
              context.vSpaceBox16,
              ProfileListTile(
                title: LocaleKeys.settings.tr(),
                icon: Icons.settings,
                iconSize: 25,
                onTap: ()async{
                  context.navigator.push( MaterialPageRoute(builder: (context) => const SettingsPage(),));
                },
              ),
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

              ElevatedButton(
                  onPressed: () {},
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
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
