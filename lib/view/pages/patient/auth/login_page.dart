import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/view/pages/patient/auth/forgot_password_page.dart';
import 'package:gluco_guide/view/pages/patient/auth/register_page.dart';
import 'package:gluco_guide/view/pages/patient/main_page.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/services/validator.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../providers/patient/auth/notifiers/patient_auth_state_notifier.dart';
import '../../../../providers/patient/auth/providers/patient_auth_state_notifier_provider.dart';
import '../../../../translations/locale_keys.g.dart';
import '../../../atoms/app_logo.dart';
import '../../../molcules/title_with_subtitle.dart';
import '../../../molcules/text_form_field_with_title.dart';
import '../bmi_page.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late TextEditingController _identifierCont;
  late TextEditingController _passwordCont;
  late GlobalKey<FormState> _patientLoginFormKey;

  @override
  void initState() {
    _identifierCont = TextEditingController();
    _passwordCont = TextEditingController();
    _patientLoginFormKey =
        GlobalKey<FormState>(debugLabel: "patient_login_Form_Key");
    super.initState();
  }

  @override
  void dispose() {
    _identifierCont.dispose();
    _passwordCont.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppConstants.shared.defaultScaffoldPadding,
          child: Form(
            key: _patientLoginFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // context.vSpaceBox60,
                const AppLogo(),

                TitleWithSubTitle(
                    title: LocaleKeys.welcomeBack.tr(),
                    subtitle: LocaleKeys.enterYourAccount.tr()),
                context.vSpaceBox30,
                TextFormFieldWithTitle(
                  controller: _identifierCont,
                  floatingTitle: LocaleKeys.email.tr(),
                  hint: LocaleKeys.emailHint.tr(),
                  validator: Validator.validateEmail,
                  action: TextInputAction.next,
                ),
                context.vSpaceBox30,
                TextFormFieldWithTitle(
                  secure: ref.watch(isPatientPasswordHiddenProvider),
                  maxLines: 1,
                  controller: _passwordCont,
                  floatingTitle: LocaleKeys.password.tr(),
                  hint: LocaleKeys.passwordHint.tr(),

                  validator: Validator.isShortPassword,
                  action: TextInputAction.done,
                  suffixIcon: IconButton(
                    icon:
                    ref.watch(isPatientPasswordHiddenProvider)
                        ? const Icon(Icons.visibility_off)
                        :
                    const Icon(Icons.remove_red_eye),
                    onPressed: () async {
                      ref
                          .read(isPatientPasswordHiddenProvider.notifier)
                          .update((bool state) => !state);
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
                        ref.read(patientAuthStateNotifierProvider.notifier).loginPatient(identifier: _identifierCont.text, password: _passwordCont.text);
                        context.navigator.pushReplacement(MaterialPageRoute(builder: (context) => MainScreen(title: "Gluco Guide App"),));
                      },
                      child: Text(LocaleKeys.login.tr()));
                }),
                context.vSpaceBox30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      LocaleKeys.dontHaveAnAccount.tr(),
                      style: context.textTheme.labelMedium,
                    ),
                    context.hSpaceBox6,
                    InkWell(
                      onTap: () async {
                        context.navigator.push(MaterialPageRoute(builder: (context) => const RegisterPage(),));
                        // context.go(RouteNames.createAccountPageRoute);
                      },
                      child: Text(
                        LocaleKeys.createAccount.tr(),
                        style: context.textTheme.headlineSmall
                            ?.copyWith(color: ColorName.primaryColor),
                      ),
                    ),
                  ],
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
