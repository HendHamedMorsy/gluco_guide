import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/view/pages/patient/workout_days_page.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/services/enums.dart';
import '../../../gen/colors.gen.dart';
import '../../../translations/locale_keys.g.dart';
import '../../atoms/app_logo.dart';
import '../../molcules/title_with_subtitle.dart';

final StateProvider<Diseases> userDiseasesProvider = StateProvider<Diseases>((StateProviderRef<Diseases> ref) => Diseases.kidneyDisfunction);

class DiseasesPage extends ConsumerWidget {
  const DiseasesPage({super.key});

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
                    title: LocaleKeys.selectDisease.tr(),
                    subtitle: LocaleKeys.selectDiseaseMsg.tr()),
                context.vSpaceBox30,
                Text( LocaleKeys.diseases.tr(),
                  style: context.textTheme.displaySmall,
                ),
                context.vSpaceBox8,
                DropdownButtonFormField(
                    value: Diseases.kidneyDisfunction,
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
                    items: Diseases.values
                        .map(
                            ( diseasesType) => DropdownMenuItem (
                          value: diseasesType,
                          child: Row(
                            children: <Widget>[
                              Text(
                                diseasesType.name,
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
                    onChanged: ( Diseases? value) async {
                      ref.read(userDiseasesProvider.notifier).update((state) => value ?? Diseases.kidneyDisfunction);
                      // if (value == null) return;
                      // ref
                      //     .read(propertyStateNotifierProvider.notifier)
                      //     .setSpaceTypeId(value);
                    }),

                context.vSpaceBox30,

                Consumer(builder:
                    (BuildContext context, WidgetRef ref, Widget? child) {
                  return FilledButton(
                      onPressed: () async {
                       context.navigator.push(MaterialPageRoute(builder: (context) => const WorkoutDaysPage() ,));

                      },
                      child: const Text("Continue"));
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
