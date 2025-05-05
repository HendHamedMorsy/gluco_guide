import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/constants/app_constants.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/translations/locale_keys.g.dart';
import 'package:gluco_guide/view/atoms/app_logo.dart';
import 'package:gluco_guide/view/molcules/title_with_subtitle.dart';
import 'package:gluco_guide/view/pages/patient/workout_days_page.dart';

class ChecklistTileOption {
  final String title;
  bool isSelected;

  ChecklistTileOption({required this.title, this.isSelected = false});
}
class DiseasesPage extends ConsumerStatefulWidget {
  const DiseasesPage({super.key});

  @override
  ConsumerState<DiseasesPage> createState() => _DiseasesPageState();
}

class _DiseasesPageState extends ConsumerState<DiseasesPage> {
  final List<ChecklistTileOption> _diseases = [
    ChecklistTileOption(title: 'Kidney Disfunction '),
    ChecklistTileOption(title: 'Liver Cirrhosis'),
    ChecklistTileOption(title: 'Fatty Liver'),
    ChecklistTileOption(title: 'Cancer'),
    ChecklistTileOption(title: 'Hypertension'),
    ChecklistTileOption(title: 'Anemia'),
    ChecklistTileOption(title: 'G6P Dehydrogenase Deficiency'),
    ChecklistTileOption(title: 'Other'),
  ];
  final List<ChecklistTileOption> _complications = [
    ChecklistTileOption(title: 'Peripheral Neuropathy '),
    ChecklistTileOption(title: 'Retinopathy '),
    ChecklistTileOption(title: 'Heart disease '),

  ];
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const AppLogo(),
                TitleWithSubTitle(
                    title: LocaleKeys.selectDisease.tr(),
                    subtitle: LocaleKeys.selectDiseaseMsg.tr()),
                context.vSpaceBox30,
                Text( "Illnesses",
                  style: context.textTheme.titleLarge,
                ),
                SizedBox(height: 550,
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: _diseases.map((option) {
                      return CheckboxListTile(
                        title: Text(option.title,style: context.textTheme.displayMedium,),
                        value: option.isSelected,
                        onChanged: (value) {
                          setState(() {
                            option.isSelected = value!;
                          });
                        },
                      );
                    }).toList(),
                  ),
                ),
                context.vSpaceBox25,
                Text( "Complications",
                  style: context.textTheme.titleLarge,
                ),
                SizedBox(height: 250,
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: _complications.map((option) {
                      return CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(option.title,style: context.textTheme.displayMedium,),
                        value: option.isSelected,
                        onChanged: (value) {
                          setState(() {
                            option.isSelected = value!;
                          });
                        },
                      );
                    }).toList(),
                  ),
                ),
                // DropdownButtonFormField(
                //     value: Diseases.kidneyDisfunction,
                //     isDense: true,
                //     icon: Transform.rotate(
                //         angle: -11,
                //         child: const Icon(
                //           Icons.arrow_forward_ios_rounded,
                //           size: 15,
                //           color: ColorName.primaryColor,
                //         )),
                //     decoration: InputDecoration(
                //         contentPadding:
                //         const EdgeInsets.symmetric(horizontal: 24),
                //         focusedBorder: OutlineInputBorder(
                //           borderSide:
                //           BorderSide(color: ColorName.primaryColor.withOpacity(0.5)),
                //           borderRadius: BorderRadius.circular(10),
                //         ),
                //         enabledBorder: OutlineInputBorder(
                //           borderSide:
                //           const BorderSide(color: Colors.transparent),
                //           borderRadius: BorderRadius.circular(10),
                //         )),
                //     items: Diseases.values
                //         .map(
                //             ( diseasesType) => DropdownMenuItem (
                //           value: diseasesType,
                //           child: Row(
                //             children: <Widget>[
                //               Text(
                //                 diseasesType.name,
                //                 style: context
                //                     .textTheme
                //                     .displayMedium
                //                     ?.copyWith(
                //                     color: ColorName.primaryColor.withOpacity(0.5)),
                //               ),
                //             ],
                //           ),
                //         ))
                //         .toList(),
                //     onChanged: ( Diseases? value) async {
                //       ref.read(userDiseasesProvider.notifier).update((state) => value ?? Diseases.kidneyDisfunction);
                //       // if (value == null) return;
                //       // ref
                //       //     .read(propertyStateNotifierProvider.notifier)
                //       //     .setSpaceTypeId(value);
                //     }),

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
