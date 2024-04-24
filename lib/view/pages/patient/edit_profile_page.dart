import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/translations/locale_keys.g.dart';
import 'package:gluco_guide/view/molcules/gluco_guide_app_bar.dart';
import '../../../core/constants/app_constants.dart';
import '../../../gen/assets.gen.dart';
import '../../../providers/local/patient_local_provider.dart';
import '../../molcules/text_form_field_with_title.dart';
import '../../molcules/user_profile_avatar.dart';


class EditProfilePage extends ConsumerStatefulWidget {
  const EditProfilePage({super.key});

  @override
  ConsumerState<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends ConsumerState<EditProfilePage> {
  late TextEditingController _nameCont;
  late TextEditingController _emailCont;
  late TextEditingController _mobileCont;
  late TextEditingController _passwordCont;
  late TextEditingController _passwordConfirmationCont;
  late GlobalKey<FormState> _patientProfileKey;

  @override
  void initState() {
    _nameCont = TextEditingController();
    _emailCont = TextEditingController();
    _mobileCont = TextEditingController();
    _passwordCont = TextEditingController();
    _passwordConfirmationCont = TextEditingController();
    _patientProfileKey =
        GlobalKey<FormState>(debugLabel: "patient_profile_Form_Key");
    super.initState();
  }

  @override
  void dispose() {
    _nameCont.dispose();
    _emailCont.dispose();
    _mobileCont.dispose();
    _passwordCont.dispose();
    _passwordConfirmationCont.dispose();
    super.dispose();
  }
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
            key: _patientProfileKey,
            child: Column(
              children: [
                Center(
                  child: UserProfileAvatar(
                    isEditProfile: true,
                    imageURL: Assets.images.profileUser.path,
                  ),
                ),

                TextFormFieldWithTitle(
                 controller: _nameCont,
                  floatingTitle: LocaleKeys.fullName.tr(),
                  hint: ref.read(patientLocalProvider)?.name,
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                   controller: _emailCont,
                  floatingTitle: LocaleKeys.email.tr(),
                  hint:ref.read(patientLocalProvider)?.email,
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
               controller: _mobileCont,
                  floatingTitle: LocaleKeys.phoneNumber.tr(),
                 keyboardType: TextInputType.number,
                 hint: ref.read(patientLocalProvider)?.mobile,
                ),
                context.vSpaceBox50,
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      LocaleKeys.save.tr(),
                      style: context.textTheme.titleLarge
                          ?.copyWith(color: Colors.white),
                    )),
                // TextButton(child: Text(LocaleKeys.changePassword.tr(), style: context.textTheme.titleLarge?.copyWith(decoration: TextDecoration.underline,decorationColor:ColorName.primaryColor.withOpacity(0.5),color: ColorName.primaryColor.withOpacity(0.7)),),
                //     onPressed: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
