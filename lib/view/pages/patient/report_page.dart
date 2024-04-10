import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/translations/locale_keys.g.dart';
import 'package:gluco_guide/view/molcules/user_info_card.dart';
import '../../../core/models/body_data_model.dart';
import '../../../gen/assets.gen.dart';


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

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
        
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                UserInfoCard(title: "Weight",
                        value: "77.8",
                        measure: "kg",
                        icon: Assets.icons.weight.path,),
                UserInfoCard(  title: "Height",
                        value: "160",
                        measure: "cm",
                        icon: Assets.icons.height.path,
                      )
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserInfoCard( title: LocaleKeys.age.tr(),
                    value: "26",
                    measure: "year",
                    icon: Assets.icons.age.path,),
                  const UserInfoCard(title: "Neck \n Circumference", value: "100",
                    measure: "cm")
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserInfoCard(title:"Hip \n Circumference",  value: "100",
                    measure: "cm",
                    icon: Assets.icons.height.path,),
                  UserInfoCard(title: "Waist \n Circumference", value: "100",
                    measure: "cm",
                    icon: Assets.icons.height.path,)
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserInfoCard(title: "Neck \n Circumference",
                    value: "100",
                    measure: "cm",
                    icon: Assets.icons.height.path,),
                  UserInfoCard(title: "Life Style",value: "Sedentary",
                    icon: Assets.icons.height.path,)
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserInfoCard(title: "Diabetes Type",value: "Type 1",
                    icon: Assets.icons.height.path),
                  UserInfoCard(title: "Illnesses",value: "Hypertension",)
                ],),
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}
