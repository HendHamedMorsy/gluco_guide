import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/view/pages/patient/bmi_page.dart';
import 'package:gluco_guide/view/pages/patient/auth/login_page.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/services/helpers.dart';
import '../../../../core/services/validator.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../translations/locale_keys.g.dart';
import '../../../atoms/app_logo.dart';
import '../../../molcules/title_with_subtitle.dart';
import '../../../molcules/text_form_field_with_title.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: AppConstants.shared.defaultScaffoldPadding,
          child: Form(
            // key: authProvider.createAccountFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const AppLogo(),
                TitleWithSubTitle(
                    title: LocaleKeys.createYourAccount.tr(),
                    subtitle: LocaleKeys.fillYourInfo.tr()),
                context.vSpaceBox30,
                TextFormFieldWithTitle(
                  // controller: authProvider.fullNameCont,
                  floatingTitle: LocaleKeys.fullName.tr(),
                  hint: LocaleKeys.nameHint.tr(),
                  action: TextInputAction.next,
                  validator: Validator.validateText,
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  // controller: authProvider.emailCont,
                  action: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  floatingTitle: LocaleKeys.email.tr(),
                  hint: LocaleKeys.emailHint.tr(),
                  validator: Validator.validateEmail,
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  // controller: authProvider.emailCont,
                  action: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  floatingTitle: LocaleKeys.phoneNumber.tr(),
                  hint: LocaleKeys.phoneHint.tr(),
                  validator: Validator.validateEgyptianMobileNumber,
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  maxLines: 1,
                  // secure: ref.watch(isPasswordHiddenProvider),
                  // controller: authProvider.passwordCont,
                  floatingTitle: LocaleKeys.password.tr(),
                  hint: LocaleKeys.passwordHint.tr(),
                  validator: Validator.isShortPassword,
                  action: TextInputAction.next,
                  // suffixIcon: IconButton(
                  //   icon: ref.watch(isPasswordHiddenProvider)
                  //       ? const Icon(Icons.visibility_off)
                  //       : const Icon(Icons.remove_red_eye),
                  //   onPressed: () async {
                  //     ref
                  //         .read(isPasswordHiddenProvider.notifier)
                  //         .update((bool state) => !state);
                  //   },
                  // ),
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  // secure: ref.watch(isConfirmedPasswordHiddenProvider),
                  maxLines: 1,
                  // controller: authProvider.confirmPasswordCont,
                  floatingTitle: LocaleKeys.confirmPassword.tr(),
                  hint: LocaleKeys.passwordHint.tr(),
                  action: TextInputAction.done,
                  // validator: (String? confirmPassword) =>
                  //     Validator.isPasswordMatchingConfirm(
                  //         authProvider.passwordCont.text, confirmPassword),
                  // suffixIcon: IconButton(
                  //   icon: ref.watch(isConfirmedPasswordHiddenProvider)
                  //       ? const Icon(Icons.visibility_off)
                  //       : const Icon(Icons.remove_red_eye),
                  //   onPressed: () async {
                  //     ref
                  //         .read(isConfirmedPasswordHiddenProvider.notifier)
                  //         .update((bool state) => !state);
                  //   },
                  // ),
                ),
                context.vSpaceBox30,
                Consumer(builder:
                    (BuildContext context, WidgetRef ref, Widget? child) {
                  // ref.listen(authStateNotifierProvider,
                  //         (BaseState? previous, BaseState next) async {
                  //       if (next is BaseStateError ||
                  //           next is FirebaseAuthStateException) {
                  //         showOkAlertDialog(
                  //             context: context,
                  //             title: LocaleKeys.somethingWent.tr(),
                  //             message: next.message);
                  //       }
                  //       if (next is OTPCodeSentSuccess) {
                  //         context.push(RouteNames.otpPageRoute);
                  //       }
                  //     });
                  return FilledButton(
                      onPressed: () async {
                        context.navigator.pushReplacement(MaterialPageRoute(builder: (context) => const BMIPage(),));
                        // if (authProvider.createAccountFormKey.currentState
                        //     ?.validate() ==
                        //     false) return;
                        // ref
                        //     .read(authStateNotifierProvider.notifier)
                        //     .checkUserAuth(
                        //     mobile: authProvider.getPhoneNumber())
                        //     .then((bool? isUserExist) {
                        //   if (isUserExist == true) {
                        //     context.pushReplacement(
                        //         RouteNames.loginAccountPageRoute);
                        //   } else {
                        //     ref
                        //         .read(authStateNotifierProvider.notifier)
                        //         .verifyPhoneNumber(
                        //         phone: authProvider.getPhoneNumber());
                        //   }
                        // });
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
                         context.navigator.push(MaterialPageRoute(builder: (context) => const LoginPage(),));
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
                // context.vSpaceBox10,
                // Align(
                //     alignment: Alignment.center,
                //     child: InkWell(
                //       onTap: () {
                //         // context.go(RouteNames.mainPageRoute);
                //       },
                //       child: Text(
                //         LocaleKeys.continueAsGuest.tr(),
                //         style: context.textTheme.bodyMedium
                //             ?.copyWith(fontWeight: FontWeight.w700),
                //       ),
                //     )),
                context.vSpaceBox30,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
