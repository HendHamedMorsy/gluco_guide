import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/gen/colors.gen.dart';
import 'package:gluco_guide/translations/locale_keys.g.dart';
import 'package:gluco_guide/view/molcules/gluco_guide_app_bar.dart';
import '../../../core/constants/app_constants.dart';
import '../../../gen/assets.gen.dart';
import '../../molcules/text_form_field_with_title.dart';
import '../../molcules/user_profile_avatar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlucoGuideAppBar(
        text: LocaleKeys.editProfile.tr(),
      ),
      body: Padding(
        padding: AppConstants.shared.defaultScaffoldPadding,
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Center(
                  child: UserProfileAvatar(
                    isEditProfile: true,
                    imageURL: Assets.images.profileUser.path,
                  ),
                ),
            
                TextFormFieldWithTitle(
                  // controller: _fullNameCont,
                  floatingTitle: LocaleKeys.fullName.tr(),
                  //hint: ref.read(userLocalProvider)?.name.toCapitalized(),
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  // controller: _emailCont,
                  floatingTitle: LocaleKeys.email.tr(),
                  //hint: ref.read(userLocalProvider)?.email,
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                 // controller: _phoneNumberCont,
                  floatingTitle: LocaleKeys.phoneNumber.tr(),
                 keyboardType: TextInputType.number,
                 // hint: ref.read(userLocalProvider)?.mobile,
                  // readOnly: true,
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
                    )),
                TextButton(child: Text(LocaleKeys.changePassword.tr(), style: context.textTheme.titleLarge?.copyWith(decoration: TextDecoration.underline,decorationColor:ColorName.primaryColor.withOpacity(0.5),color: ColorName.primaryColor.withOpacity(0.7)),),
                    onPressed: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
