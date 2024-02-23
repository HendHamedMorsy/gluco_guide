import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/translations/locale_keys.g.dart';
import 'package:gluco_guide/view/molcules/gluco_guide_app_bar.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../molcules/profile_list_tile.dart';
import '../../molcules/user_info_card.dart';
import '../../molcules/user_profile_avatar.dart';

class MinePage extends StatelessWidget {
  const MinePage({super.key});

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
                  imageURL: Assets.images.profileUser.path,
                  name: "Hend Hamed Morsy",
                  email: "hendhamedmorsy@gmail.com",
                ),
              ),
              context.vSpaceBox20,
              Row(
                children: [
                  UserInfoCard(
                    title: "Weight",
                    value: "77.8",
                    measure: "kg",
                    icon: Assets.icons.weight.path,
                  ),
                  UserInfoCard(
                    title: "Height",
                    value: "160",
                    measure: "cm",
                    icon: Assets.icons.height.path,
                  ),
                  UserInfoCard(
                    title: "Age",
                    value: "26",
                    measure: "year",
                    icon: Assets.icons.age.path,
                  ),
                ],
              ),
              context.vSpaceBox16,
              ProfileListTile(
                title: LocaleKeys.editProfile.tr(),
                icon: Icons.manage_accounts_sharp,
              ),
              context.vSpaceBox16,
              ProfileListTile(
                isNotificationField: true,
                title: LocaleKeys.notifications.tr(),
                icon: Icons.notifications,
                iconSize: 25,
              ),
              context.vSpaceBox16,
              ProfileListTile(
                title: LocaleKeys.settings.tr(),
                icon: Icons.settings,
                iconSize: 25,
              ),
              context.vSpaceBox40,
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
