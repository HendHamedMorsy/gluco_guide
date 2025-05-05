import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/gen/colors.gen.dart';
import 'package:gluco_guide/providers/local/doctor_local_provider.dart';
import 'package:gluco_guide/translations/locale_keys.g.dart';
import 'package:gluco_guide/view/molcules/gluco_guide_app_bar.dart';
import 'package:gluco_guide/view/pages/doctor/admin_page.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../providers/doctor/auth/providers/doctor_auth_state_notifier_provider.dart';
import '../../../molcules/text_form_field_with_title.dart';
import '../../../molcules/user_profile_avatar.dart';

class DoctorProfilePage extends ConsumerStatefulWidget {
  const DoctorProfilePage({super.key});

  @override
  ConsumerState<DoctorProfilePage> createState() => _DoctorProfilePageState();
}

class _DoctorProfilePageState extends ConsumerState<DoctorProfilePage> {
  late TextEditingController _nameCont;
  late TextEditingController _emailCont;
  late TextEditingController _mobileCont;
  late TextEditingController _passwordCont;
  late TextEditingController _passwordConfirmationCont;
  late GlobalKey<FormState> _doctorProfileKey;

  @override
  void initState() {
    _nameCont = TextEditingController();
    _emailCont = TextEditingController();
    _mobileCont = TextEditingController();
    _passwordCont = TextEditingController();
    _passwordConfirmationCont = TextEditingController();
    _doctorProfileKey =
        GlobalKey<FormState>(debugLabel: "doctor_profile_Form_Key");
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
      appBar: const GlucoGuideAppBar(
        text: "My profile",
      ),
      body: Padding(
        padding: AppConstants.shared.defaultScaffoldPadding,
        child: SingleChildScrollView(
          child: Form(
            key: _doctorProfileKey,
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
                  hint: ref.read(doctorLocalProvider)?.name,
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  controller: _emailCont,
                  floatingTitle: LocaleKeys.email.tr(),
                  hint: ref.read(doctorLocalProvider)?.email,
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  controller: _mobileCont,
                  floatingTitle: LocaleKeys.phoneNumber.tr(),
                  keyboardType: TextInputType.number,
                  hint: ref.read(doctorLocalProvider)?.mobile,
                ),
                context.vSpaceBox50,
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      LocaleKeys.save.tr(),
                      style: context.textTheme.titleLarge
                          ?.copyWith(color: Colors.white),
                    )),
                TextButton(
                    child: Text(
                      LocaleKeys.logout.tr(),
                      style: context.textTheme.titleLarge?.copyWith(
                          decoration: TextDecoration.underline,
                          decorationColor:
                              ColorName.primaryColor.withOpacity(0.5),
                          color: ColorName.primaryColor.withOpacity(0.7)),
                    ),
                    onPressed: () async {
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
                          .read(doctorAuthStateNotifierProvider.notifier)
                          .logOutDoctor()
                          .then((_) {
                        Future<void>.delayed(const Duration(milliseconds: 100),
                            () {
                          ref.invalidate(doctorAuthStateNotifierProvider);
                          ref.invalidate(doctorLocalProvider);
                        });
                        context.navigator.pushReplacement(MaterialPageRoute(
                          builder: (context) => const AdminPage(),
                        ));
                      });
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
