import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/view/pages/patient/bmi_page.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../translations/locale_keys.g.dart';
import '../../../atoms/app_logo.dart';
import '../../../molcules/title_with_subtitle.dart';
import '../../../molcules/text_form_field_with_title.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppConstants.shared.defaultScaffoldPadding,
          child: Form(
            // key: _resetPasswordFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // context.vSpaceBox60,
                const AppLogo(),
                context.vSpaceBox30,
                TitleWithSubTitle(
                    title: LocaleKeys.resetPassword.tr(),
                    subtitle: LocaleKeys.resetYourNewPassword.tr()),
                context.vSpaceBox30,
                TextFormFieldWithTitle(
                  // controller: _newPasswordCont,
                  maxLines: 1,
                  action: TextInputAction.next,
                  // secure: ref.watch(isPasswordHiddenProvider),
                  floatingTitle: LocaleKeys.newPassword.tr(),
                  hint: LocaleKeys.passwordHint.tr(),
                  // validator: Validator.isShortPassword,
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

                context.vSpaceBox20,
                TextFormFieldWithTitle(
                  // secure: ref.watch(isConfirmedPasswordHiddenProvider),
                  maxLines: 1,
                  action: TextInputAction.done,
                  floatingTitle: LocaleKeys.confirmPassword.tr(),
                  hint: LocaleKeys.passwordHint.tr(),
                  // validator: (String? confirmPassword) =>
                  //     Validator.isPasswordMatchingConfirm(
                  //         _newPasswordCont.text, confirmPassword),
                  suffixIcon: IconButton(
                    icon:
                    // ref.watch(isConfirmedPasswordHiddenProvider)
                    //     ? const Icon(Icons.visibility_off)
                    //     :
                    const Icon(Icons.remove_red_eye),
                    onPressed: () async {
                      // ref
                      //     .read(isConfirmedPasswordHiddenProvider.notifier)
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
                  //       if (next is ResetPasswordStateSuccess) {
                  //         context.go(RouteNames.mainPageRoute);
                  //       }
                  //     });
                  return FilledButton(
                      onPressed: () async {
                        context.navigator.push(MaterialPageRoute(builder: (context) => const BMIPage(),));
                        // ref
                        //     .read(authStateNotifierProvider.notifier)
                        //     .resetPassword(
                        //     newPassword: _newPasswordCont.text,
                        //     mobile: authProvider.getPhoneNumber());
                      },
                      child: Text(LocaleKeys.reset.tr()));
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
