import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/view/pages/forgot_password_page.dart';
import 'package:gluco_guide/view/pages/home_page.dart';
import '../../core/constants/app_constants.dart';
import '../../core/services/validator.dart';
import '../../translations/locale_keys.g.dart';
import '../atoms/app_logo.dart';
import '../molcules/title_with_subtitle.dart';
import '../organisms/text_form_field_with_title.dart';

class AdminLoginPage extends StatelessWidget {
  const AdminLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppConstants.shared.defaultScaffoldPadding,
          child: Form(
            // key: _loginFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const AppLogo(),
                TitleWithSubTitle(
                    title: LocaleKeys.welcomeBack.tr(),
                    subtitle: LocaleKeys.enterYourAccount.tr()),
                context.vSpaceBox30,
                TextFormFieldWithTitle(
                  // controller: _passwordCont,
                  floatingTitle: LocaleKeys.email.tr(),
                  hint: LocaleKeys.emailHint.tr(),
                  validator: Validator.validateEmail,
                  action: TextInputAction.done,
                  suffixIcon: IconButton(
                    icon:
                    // ref.watch(isPasswordHiddenProvider)
                    //     ? const Icon(Icons.visibility_off)
                    //     :
                    const Icon(Icons.remove_red_eye),
                    onPressed: () async {
                      // ref
                      //     .read(isPasswordHiddenProvider.notifier)
                      //     .update((bool state) => !state);
                    },
                  ),
                ),
                context.vSpaceBox30,

                TextFormFieldWithTitle(
                  // secure: ref.watch(isPasswordHiddenProvider),
                  maxLines: 1,
                  // controller: _passwordCont,
                  floatingTitle: LocaleKeys.password.tr(),
                  hint: LocaleKeys.passwordHint.tr(),
                  endWidget: TextButton(
                      onPressed: () async {
                        context.navigator.push(MaterialPageRoute(builder: (context) => const ForgotPasswordPage()));
                        // context.push(RouteNames.forgotPasswordPageRoute);
                        // context.go(
                        //     "${RouteNames.loginAccountPageRoute}/${RouteNames.forgotPasswordPageSubRoute}");
                      },
                      child: Text(LocaleKeys.forgotPassword.tr())),
                  validator: Validator.isShortPassword,
                  action: TextInputAction.done,
                  suffixIcon: IconButton(
                    icon:
                    // ref.watch(isPasswordHiddenProvider)
                    //     ? const Icon(Icons.visibility_off)
                    //     :
                    const Icon(Icons.remove_red_eye),
                    onPressed: () async {
                      // ref
                      //     .read(isPasswordHiddenProvider.notifier)
                      //     .update((bool state) => !state);
                    },
                  ),
                ),
                context.vSpaceBox30,
                Consumer(builder:
                    (BuildContext context, WidgetRef ref, Widget? child) {
                  // ref.listen(authStateNotifierProvider,
                  //         (BaseState? previous, BaseState next) async {
                  //       if (next is BaseStateError) {
                  //         showOkAlertDialog(
                  //             context: context,
                  //             title: LocaleKeys.somethingWent.tr(),
                  //             message: next.message);
                  //       }
                  //       if (next is AuthStateLoginSuccess) {
                  //         ref.invalidate(userLocalProvider);
                  //         context.go(RouteNames.mainPageRoute);
                  //       }
                  //     });
                  return FilledButton(
                      onPressed: () async {
                        context.navigator.pushReplacement(MaterialPageRoute(builder: (context) => HomePage(),));
                        // authProvider.login(
                        //     mobile: completePhoneNumber,
                        //     password: _passwordCont.text);
                        // ref.invalidate(userLocalProvider);
                      },
                      child: Text(LocaleKeys.login.tr()));
                }),
                // context.vSpaceBox30,
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     Text(
                //       LocaleKeys.dontHaveAnAccount.tr(),
                //       style: context.textTheme.labelMedium,
                //     ),
                //     context.hSpaceBox6,
                //     InkWell(
                //       onTap: () async {
                //         context.navigator.push(MaterialPageRoute(builder: (context) => const RegisterPage(),));
                //         // context.go(RouteNames.createAccountPageRoute);
                //       },
                //       child: Text(
                //         LocaleKeys.createAccount.tr(),
                //         style: context.textTheme.headlineSmall
                //             ?.copyWith(color: ColorName.primaryColor),
                //       ),
                //     ),
                //   ],
                // ),
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
