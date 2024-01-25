import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/view/pages/reset_password_page.dart';
import '../../core/constants/app_constants.dart';
import '../../core/services/validator.dart';
import '../../translations/locale_keys.g.dart';
import '../atoms/app_logo.dart';
import '../molcules/title_with_subtitle.dart';
import '../organisms/text_form_field_with_title.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
                // context.vSpaceBox60,
                const AppLogo(),
                TitleWithSubTitle(
                    title: LocaleKeys.forgotPassword.tr(),
                    subtitle: LocaleKeys.enterYourPhoneReset.tr()),
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
                      context.navigator.push(MaterialPageRoute(builder: (context) => const ResetPasswordPage(),));
                      },
                      child: Text(LocaleKeys.forgotPassword.tr()));
                }),
                context.vSpaceBox30,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
