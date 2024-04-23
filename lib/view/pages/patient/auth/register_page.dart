import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/core/services/log_manager.dart';
import 'package:gluco_guide/providers/patient/auth/providers/doctors_list_future_provider.dart';
import 'package:gluco_guide/view/pages/patient/bmi_page.dart';
import 'package:gluco_guide/view/pages/patient/auth/login_page.dart';
import '../../../../ data/models/patient/doctor_list_model/doctor_list_model.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/services/helpers.dart';
import '../../../../core/services/validator.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../providers/patient/auth/notifiers/patient_auth_state_notifier.dart';
import '../../../../providers/patient/auth/providers/patient_auth_state_notifier_provider.dart';
import '../../../../translations/locale_keys.g.dart';
import '../../../atoms/app_logo.dart';
import '../../../molcules/title_with_subtitle.dart';
import '../../../molcules/text_form_field_with_title.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    PatientAuthStateNotifier patientAuthStateNotifier =
        ref.read(patientAuthStateNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: AppConstants.shared.defaultScaffoldPadding,
          child: Form(
            key: patientAuthStateNotifier.createAccountFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const AppLogo(),
                TitleWithSubTitle(
                    title: LocaleKeys.createYourAccount.tr(),
                    subtitle: LocaleKeys.fillYourInfo.tr()),
                context.vSpaceBox30,
                TextFormFieldWithTitle(
                  controller: patientAuthStateNotifier.nameCont,
                  floatingTitle: LocaleKeys.fullName.tr(),
                  hint: LocaleKeys.nameHint.tr(),
                  action: TextInputAction.next,
                  validator: Validator.validateText,
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  controller: patientAuthStateNotifier.emailCont,
                  action: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  floatingTitle: LocaleKeys.email.tr(),
                  hint: LocaleKeys.emailHint.tr(),
                  validator: Validator.validateEmail,
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  controller: patientAuthStateNotifier.emailCont,
                  action: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  floatingTitle: LocaleKeys.phoneNumber.tr(),
                  hint: LocaleKeys.phoneHint.tr(),
                  validator: Validator.validateEgyptianMobileNumber,
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  maxLines: 1,
                  secure: ref.watch(isPatientPasswordHiddenProvider),
                  controller: patientAuthStateNotifier.passwordCont,
                  floatingTitle: LocaleKeys.password.tr(),
                  hint: LocaleKeys.passwordHint.tr(),
                  validator: Validator.isShortPassword,
                  action: TextInputAction.next,
                  suffixIcon: IconButton(
                    icon: ref.watch(isPatientPasswordHiddenProvider)
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.remove_red_eye),
                    onPressed: () async {
                      ref
                          .read(isPatientPasswordHiddenProvider.notifier)
                          .update((bool state) => !state);
                    },
                  ),
                ),
                context.vSpaceBox10,
                TextFormFieldWithTitle(
                  secure: ref.watch(isPatientPasswordHiddenProvider),
                  maxLines: 1,
                  controller: patientAuthStateNotifier.confirmPasswordCont,
                  floatingTitle: LocaleKeys.confirmPassword.tr(),
                  hint: LocaleKeys.passwordHint.tr(),
                  action: TextInputAction.done,
                  validator: (String? confirmPassword) =>
                      Validator.isPasswordMatchingConfirm(
                          patientAuthStateNotifier.passwordCont.text,
                          confirmPassword),
                  suffixIcon: IconButton(
                    icon: ref.watch(isConfirmedPatientPasswordHiddenProvider)
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.remove_red_eye),
                    onPressed: () async {
                      ref
                          .read(
                              isConfirmedPatientPasswordHiddenProvider.notifier)
                          .update((bool state) => !state);
                    },
                  ),
                ),
                context.vSpaceBox25,
                DropdownButtonFormField<int?>(
                            value: ref.watch(allDoctorsFutureProvider).value?.first.id,
                            isDense: true,
                            icon: Transform.rotate(
                                angle: -11,
                                child: const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 15,
                                  color: ColorName.primaryColor,
                                )),
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 24),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorName.primaryColor
                                          .withOpacity(0.5)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            items: ref.watch(allDoctorsFutureProvider).value
                               ?.map((DoctorListData? doctor) => DropdownMenuItem(
                                      value: doctor?.id,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            doctor?.name ?? "",
                                            style: context
                                                .textTheme.displayMedium
                                                ?.copyWith(
                                                    color: ColorName
                                                        .primaryColor
                                                        .withOpacity(0.5)),
                                          ),
                                        ],
                                      ),
                                    ))
                                .toList(),
                            onChanged: ( value) async {
                              if (value == null) return;
                              ref
                                  .watch(patientAuthStateNotifierProvider.notifier)
                                  .setDoctorId(value);
                              LogManager.logToConsole(ref.read(patientAuthStateNotifierProvider.notifier).getDoctorId(),"DocID");
                            }),

                context.vSpaceBox30,
                Consumer(builder:
                    (BuildContext context, WidgetRef ref, Widget? child) {
                  return FilledButton(
                      onPressed: () async {
                        context.navigator.push(MaterialPageRoute(
                          builder: (context) => const BMIPage(),
                        ));
                      },
                      child: Text(LocaleKeys.continuePickup.tr()));
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
                            builder: (context) => const LoginPage(),
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
