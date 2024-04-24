import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/translations/locale_keys.g.dart';
import 'package:gluco_guide/view/molcules/user_info_card.dart';
import '../../../core/models/body_data_model.dart';
import '../../../gen/assets.gen.dart';
import '../../../providers/local/patient_local_provider.dart';


final AutoDisposeFutureProvider<List<BodyData>?> bodyInfoFutureProvider =
    FutureProvider.autoDispose<List<BodyData>?>(
        (AutoDisposeFutureProviderRef<List<BodyData>?> ref) {
  List<BodyData> workoutList = <BodyData>[
    const BodyData(
      bodyInfoTitle: "Height",
        id: 1,
        height: "160",
        weight: "75",
        age: "26",
        waistCircumference: "100",
        diabetesType: "Type 1",
        neckCircumference: "100",
        hipCircumference: "100",
        lifeStyleType: "100"),

  ];
  return workoutList;
});

class ReportPage extends ConsumerStatefulWidget {
  const ReportPage({super.key});

  @override
  ConsumerState<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends ConsumerState<ReportPage> {
  @override
  Widget build(BuildContext context) {
    var patientData = ref.watch(patientLocalProvider);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                UserInfoCard(title: "Weight",
                        value: patientData?.weight,
                        measure: "kg",
                        icon: Assets.icons.weight.path,),
                UserInfoCard(  title: "Height",
                        value:  patientData?.height,
                        measure: "cm",
                        icon: Assets.icons.height.path,
                      )
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserInfoCard( title: LocaleKeys.age.tr(),
                    value:  patientData?.age.toString(),
                    measure: "year",
                    icon: Assets.icons.age.path,),
                   UserInfoCard(title: "Neck \n Circumference", value:  patientData?.neckCircumference,
                    measure: "cm")
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserInfoCard(title:"Hip \n Circumference",  value:  patientData?.hipCircumference,
                    measure: "cm",
                    icon: Assets.icons.height.path,),
                  UserInfoCard(title: "Waist \n Circumference", value:  patientData?.waistCircumference,
                    measure: "cm",
                    icon: Assets.icons.height.path,)
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserInfoCard(title: "Neck \n Circumference",
                    value:  patientData?.neckCircumference,
                    measure: "cm",
                    icon: Assets.icons.height.path,),
                  UserInfoCard(title: "Life Style",value:  patientData?.lifestyleType,
                    icon: Assets.icons.height.path,)
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserInfoCard(title: "Diabetes Type",value:  patientData?.diabetesType,
                    icon: Assets.icons.height.path),
                  UserInfoCard(title: "Illnesses",value:  patientData?.illnesses?.first.nameEn ??" No Illnesses",)
                ],),



            ],
          ),
        ),
      ),
    );
  }
}
