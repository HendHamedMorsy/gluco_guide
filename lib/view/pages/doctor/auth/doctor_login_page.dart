import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/providers/local/doctor_local_provider.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/services/validator.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../providers/patient/auth/notifiers/patient_auth_state_notifier.dart';
import '../../../../providers/patient/auth/providers/patient_auth_state_notifier_provider.dart';
import '../../../../providers/patient/auth/states/patient_base_state.dart';
import '../../../../translations/locale_keys.g.dart';
import '../../../atoms/app_logo.dart';
import '../../../molcules/title_with_subtitle.dart';
import '../../../molcules/text_form_field_with_title.dart';
import 'doctor_home_page.dart';
import 'doctor_register_page.dart';

class DoctorLoginPage extends ConsumerStatefulWidget {
  const DoctorLoginPage({super.key});

  @override
  ConsumerState<DoctorLoginPage> createState() => _DoctorLoginPageState();
}

class _DoctorLoginPageState extends ConsumerState<DoctorLoginPage> {
  late TextEditingController _identifierCont;
  late TextEditingController _passwordCont;
  late GlobalKey<FormState> _doctorLoginFormKey;

  @override
  void initState() {
    _identifierCont = TextEditingController();
    _passwordCont = TextEditingController();
    _doctorLoginFormKey =
        GlobalKey<FormState>(debugLabel: "doctor_login_Form_Key");
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
           key: _doctorLoginFormKey,
            child: Column(
              children: <Widget>[
                const AppLogo(),
                TitleWithSubTitle(
                    title: LocaleKeys.welcomeBack.tr(),
                    subtitle: LocaleKeys.enterYourAccount.tr()),
                context.vSpaceBox25,
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
                  ref.listen(patientAuthStateNotifierProvider,
                          (PatientBaseState? previous, PatientBaseState next) async {
                        if (next is PatientBaseStateError) {
                          showOkAlertDialog(
                              context: context,
                              title: LocaleKeys.somethingWent.tr(),
                              message: next.message);
                        }
                        if (next is PatientAuthStateLoginSuccess) {
                          ref.invalidate(doctorLocalProvider);
                          ref.invalidate(doctorTokenProvider);
                          context.navigator.pushReplacement(MaterialPageRoute(builder: (context) => const DoctorHomePage(),));

                        }
                      });
                  return FilledButton(
                      onPressed: () async {
                        ref.read(patientAuthStateNotifierProvider.notifier
                        ).login(identifier: _identifierCont.text,
                        password: _passwordCont.text);
                        ref.invalidate(doctorLocalProvider);
                        ref.invalidate(doctorTokenProvider);
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
                        context.navigator.push(MaterialPageRoute(builder: (context) => const DoctorRegisterPage(),));
                      },
                      child: Text(
                        LocaleKeys.createAccount.tr(),
                        style: context.textTheme.headlineSmall
                            ?.copyWith(color: ColorName.primaryColor),
                      ),
                    ),
                  ],
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
