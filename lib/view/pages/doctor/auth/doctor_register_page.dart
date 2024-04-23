import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/services/helpers.dart';
import '../../../../core/services/validator.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../providers/doctor/auth/notifiers/doctor_auth_state_notifier.dart';
import '../../../../providers/doctor/auth/providers/doctor_auth_state_notifier_provider.dart';
import '../../../../providers/doctor/auth/states/doctor_base_state.dart';
import '../../../../translations/locale_keys.g.dart';
import '../../../atoms/app_logo.dart';
import '../../../molcules/title_with_subtitle.dart';
import '../../../molcules/text_form_field_with_title.dart';
import '../doctor_home_page.dart';
import 'doctor_login_page.dart';

class DoctorRegisterPage extends ConsumerStatefulWidget {
  const DoctorRegisterPage({super.key});

  @override
  ConsumerState<DoctorRegisterPage> createState() => _DoctorRegisterPageState();
}

class _DoctorRegisterPageState extends ConsumerState<DoctorRegisterPage> {
  late TextEditingController _nameCont;
  late TextEditingController _emailCont;
  late TextEditingController _mobileCont;
  late TextEditingController _passwordCont;
  late TextEditingController _passwordConfirmationCont;
  late GlobalKey<FormState> _doctorRegisterFormKey;

  @override
  void initState() {
    _nameCont = TextEditingController();
    _emailCont = TextEditingController();
    _mobileCont = TextEditingController();
    _passwordCont = TextEditingController();
    _passwordConfirmationCont = TextEditingController();
    _doctorRegisterFormKey =
        GlobalKey<FormState>(debugLabel: "doctor_register_Form_Key");
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
      appBar: AppBar(
        toolbarHeight: 90.h,
        backgroundColor: Colors.transparent,
        title: const AppLogo(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppConstants.shared.defaultScaffoldPadding,
          child: Form(
            key: _doctorRegisterFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TitleWithSubTitle(
                    title: LocaleKeys.createYourAccount.tr(),
                    subtitle: LocaleKeys.fillYourInfo.tr()),
                context.vSpaceBox30,
                TextFormFieldWithTitle(
                  controller: _nameCont,
                  floatingTitle: LocaleKeys.fullName.tr(),
                  hint: LocaleKeys.nameHint.tr(),
                  action: TextInputAction.next,
                  validator: Validator.validateText,
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  controller: _emailCont,
                  action: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  floatingTitle: LocaleKeys.email.tr(),
                  hint: LocaleKeys.emailHint.tr(),
                  validator: Validator.validateEmail,
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  controller: _mobileCont,
                  action: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  floatingTitle: LocaleKeys.phoneNumber.tr(),
                  hint: LocaleKeys.phoneHint.tr(),
                  validator: Validator.validateEgyptianMobileNumber,
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  maxLines: 1,
                  secure: ref.watch(isDoctorPasswordHiddenProvider),
                  controller: _passwordCont,
                  floatingTitle: LocaleKeys.password.tr(),
                  hint: LocaleKeys.passwordHint.tr(),
                  validator: Validator.isShortPassword,
                  action: TextInputAction.next,
                  suffixIcon: IconButton(
                    icon: ref.watch(isDoctorPasswordHiddenProvider)
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.remove_red_eye),
                    onPressed: () async {
                      ref
                          .read(isDoctorPasswordHiddenProvider.notifier)
                          .update((bool state) => !state);
                    },
                  ),
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  secure: ref.watch(isConfirmedDoctorPasswordHiddenProvider),
                  maxLines: 1,
                  // controller: authProvider.confirmPasswordCont,
                  floatingTitle: LocaleKeys.confirmPassword.tr(),
                  hint: LocaleKeys.passwordHint.tr(),
                  action: TextInputAction.done,
                  validator: (String? confirmPassword) =>
                      Validator.isPasswordMatchingConfirm(
                          _passwordCont.text, confirmPassword),
                  suffixIcon: IconButton(
                    icon: ref.watch(isConfirmedDoctorPasswordHiddenProvider)
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.remove_red_eye),
                    onPressed: () async {
                      ref
                          .read(
                              isConfirmedDoctorPasswordHiddenProvider.notifier)
                          .update((bool state) => !state);
                    },
                  ),
                ),
                context.vSpaceBox30,
                Consumer(builder:
                    (BuildContext context, WidgetRef ref, Widget? child) {
                  // ref.listen(doctorAuthStateNotifierProvider,
                  //     (DoctorBaseState? previous, DoctorBaseState next) async {
                  //   if(next is DoctorAuthStateRegisterSuccess){
                  //     context.navigator.pushReplacement(MaterialPageRoute(
                  //       builder: (context) => const DoctorHomePage(),
                  //     ));
                  //   }
                  //   else if (next is DoctorBaseState) {
                  //     showOkAlertDialog(
                  //         context: context,
                  //         title: LocaleKeys.somethingWent.tr(),
                  //         message: next.message);
                  //   }
                  // });
                  return FilledButton(
                      onPressed: () async {
                        if (_doctorRegisterFormKey.currentState?.validate() ==
                            false) return;
                        ref
                            .read(doctorAuthStateNotifierProvider.notifier)
                            .registerDoctor(
                                email: _emailCont.text,
                                password: _passwordCont.text,
                                name: _passwordCont.text,
                                mobile: _mobileCont.text);
                      },
                      child: Text(LocaleKeys.getStarted.tr()));
                }),
                context.vSpaceBox30,
                Visibility(
                  visible: Helpers.shared.isKeyboardOpen(context) == false,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        LocaleKeys.alreadyHaveAccount.tr(),
                        style: context.textTheme.labelMedium,
                      ),
                      context.hSpaceBox6,
                      InkWell(
                        onTap: () async {
                          context.navigator.push(MaterialPageRoute(
                            builder: (context) => const DoctorLoginPage(),
                          ));
                        },
                        child: Text(
                          LocaleKeys.login.tr(),
                          style: context.textTheme.headlineSmall
                              ?.copyWith(color: ColorName.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                context.vSpaceBox30,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
