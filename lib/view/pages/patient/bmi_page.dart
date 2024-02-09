import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/services/enums.dart';
import '../../../core/services/validator.dart';
import '../../../gen/colors.gen.dart';
import '../../../translations/locale_keys.g.dart';
import '../../atoms/app_logo.dart';
import '../../molcules/title_with_subtitle.dart';
import '../../molcules/text_form_field_with_title.dart';
import 'diseases_page.dart';
final StateProvider<UserGender> userGenderProvider = StateProvider<UserGender>((StateProviderRef<UserGender> ref) => UserGender.male);
final StateProvider<UserType> userTypeProvider = StateProvider<UserType>((StateProviderRef<UserType> ref) => UserType.type1);

class BMIPage extends ConsumerWidget {
  const BMIPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: AppConstants.shared.defaultScaffoldPadding,
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const AppLogo(),
                TitleWithSubTitle(
                    title: LocaleKeys.bmiCalculator.tr(),
                    subtitle: LocaleKeys.bmiMsg.tr()),
                context.vSpaceBox30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextFormFieldWithTitle(
                        keyboardType: TextInputType.number,
                        // controller: authProvider.fullNameCont,
                        floatingTitle: LocaleKeys.height.tr(),
                        hint:"0.0",
                        action: TextInputAction.next,
                        validator: Validator.validateText,
                      ),
                    ),
                    context.hSpaceBox16,
                    Expanded(
                      flex: 1,
                      child: TextFormFieldWithTitle(
                        keyboardType: TextInputType.number,
                        // controller: authProvider.fullNameCont,
                        floatingTitle: LocaleKeys.weight.tr(),
                        hint: "0.0",
                        action: TextInputAction.next,
                        validator: Validator.validateText,
                      ),
                    ),
                  ],
                ),
                context.vSpaceBox16,
                TextFormFieldWithTitle(
                  // controller: authProvider.emailCont,
                  action: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  floatingTitle: LocaleKeys.age.tr(),
                  hint: LocaleKeys.ageHint.tr(),
                  validator: Validator.validateEmail,
                ),
                context.vSpaceBox16,

            Text( LocaleKeys.gender.tr(),
            style: context.textTheme.displaySmall,
          ),
          context.vSpaceBox8,
          DropdownButtonFormField(
              value: UserGender.male,
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
                    borderSide:
                     BorderSide(color: ColorName.primaryColor.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10),
                  )),
              items: UserGender.values
                  .map(
                      ( menuGender) => DropdownMenuItem (
                    value: menuGender,
                    child: Row(
                      children: <Widget>[
                        Text(
                          menuGender.gender,
                          style: context
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                              color: ColorName.primaryColor.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ))
                  .toList(),
              onChanged: ( UserGender? value) async {
                ref.read(userGenderProvider.notifier).update((state) => value ?? UserGender.male);
                // if (value == null) return;
                // ref
                //     .read(propertyStateNotifierProvider.notifier)
                //     .setSpaceTypeId(value);
              }),
                context.vSpaceBox16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextFormFieldWithTitle(
                        keyboardType: TextInputType.number,
                        // controller: authProvider.fullNameCont,
                        floatingTitle: LocaleKeys.waist.tr(),
                        hint:"e.g. 80 cm",
                        action: TextInputAction.next,
                        validator: Validator.validateText,
                      ),
                    ),
                    context.hSpaceBox16,
                    Expanded(
                      flex: 1,
                      child: TextFormFieldWithTitle(
                        keyboardType: TextInputType.number,
                        // controller: authProvider.fullNameCont,
                        floatingTitle: LocaleKeys.neckCircumference.tr(),
                        hint: "e.g. 10 cm",
                        action: TextInputAction.next,
                        validator: Validator.validateText,
                      ),
                    ),
                  ],
                ),
                context.vSpaceBox16,

                Text( LocaleKeys.typeOfDiabetes.tr(),
                  style: context.textTheme.displaySmall,
                ),
                context.vSpaceBox8,
                DropdownButtonFormField(
                    value: UserType.type1,
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
                          borderSide:
                          BorderSide(color: ColorName.primaryColor.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(10),
                        )),
                    items: UserType.values
                        .map(
                            ( menuType) => DropdownMenuItem (
                          value: menuType,
                          child: Row(
                            children: <Widget>[
                              Text(
                                menuType.type,
                                style: context
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                    color: ColorName.primaryColor.withOpacity(0.5)),
                              ),
                            ],
                          ),
                        ))
                        .toList(),
                    onChanged: ( UserType? value) async {
                      ref.read(userTypeProvider.notifier).update((state) => value ?? UserType.type1);
                      // if (value == null) return;
                      // ref
                      //     .read(propertyStateNotifierProvider.notifier)
                      //     .setSpaceTypeId(value);
                    }),
                context.vSpaceBox30,
                context.vSpaceBox30,
                Consumer(builder:
                    (BuildContext context, WidgetRef ref, Widget? child) {
                  return FilledButton(
                      onPressed: () async {
                        context.navigator.push(MaterialPageRoute(builder: (context) => const DiseasesPage() ,));

                      },
                      child: Text(LocaleKeys.calculateBMI.tr()));
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
