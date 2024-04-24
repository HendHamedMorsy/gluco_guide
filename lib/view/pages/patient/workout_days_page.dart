import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/providers/patient/auth/providers/patient_auth_state_notifier_provider.dart';
import 'package:gluco_guide/view/pages/patient/main_page.dart';
import '../../../core/constants/app_constants.dart';
import '../../../gen/colors.gen.dart';
import '../../../translations/locale_keys.g.dart';
import '../../atoms/app_logo.dart';
import '../../molcules/title_with_subtitle.dart';

class WorkoutDaysPage extends StatelessWidget {
  const WorkoutDaysPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppConstants.shared.defaultScaffoldPadding,
        child: Column(children: [
          const AppLogo(),
          TitleWithSubTitle(
              title: LocaleKeys.workoutDaysTitle.tr(),
              subtitle: LocaleKeys.workoutDaysSubTitle.tr()),
      const Spacer(flex: 3,),

          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: ColorName.primaryColor.withOpacity(0.7)
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  width: 100,
                  child: CupertinoPicker(
                      selectionOverlay: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(decoration: const BoxDecoration(
                            color: Colors.transparent,
                            border: Border(bottom: BorderSide(
                                color: Colors.white
                            ))
                        ),),
                      ),
                      itemExtent: 60,
                      onSelectedItemChanged: (value) {

                      }, children:  [
                    Text("1", style: context.textTheme.headlineLarge?.copyWith(color: Colors.white), ),
                    Text("2", style: context.textTheme.headlineLarge?.copyWith(color: Colors.white),),
                    Text("3", style: context.textTheme.headlineLarge?.copyWith(color: Colors.white),),
                    Text("4", style: context.textTheme.headlineLarge?.copyWith(color: Colors.white),),
                    Text("5", style: context.textTheme.headlineLarge?.copyWith(color: Colors.white),),
                    Text("6", style: context.textTheme.headlineLarge?.copyWith(color: Colors.white),),
                    Text("7", style: context.textTheme.headlineLarge?.copyWith(color: Colors.white),),
                  ]),

                ),
                context.hSpaceBox16,
                Text("Days", style: context.textTheme.headlineLarge?.copyWith(color: Colors.white),),
              ],
            ),
          ),

          const Spacer(flex: 8,),
          Consumer(
            builder:(context, ref, child) {
              return
                FilledButton(onPressed: () {
                  var patientAuthProvider =    ref.read(patientAuthStateNotifierProvider.notifier);
                  patientAuthProvider
                      .registerPatient(
                      name: patientAuthProvider.nameCont.text,
                      email: patientAuthProvider.emailCont.text,
                      password: patientAuthProvider.passwordCont.text,
                      mobile: patientAuthProvider.mobileCont.text,
                      doctorId: patientAuthProvider.getDoctorId(),
                      weight: patientAuthProvider.weightCont.text,
                      height: patientAuthProvider.heightCont.text,
                      age: patientAuthProvider.ageCont.text,
                      gender: 2,
                      bgl: patientAuthProvider.bglCont.text,
                      waistCircumference: patientAuthProvider.waistCont.text,
                      neckCircumference: patientAuthProvider.neckCont.text,
                      hipCircumference: patientAuthProvider.hipCont.text,
                      lifestyleType: "moderate activity",
                      diabetesType: "2",
                      workDays: patientAuthProvider.getGenderId(),
                      illnesses:{1, 2, 3, 4, 5});
                  context.navigator.pushReplacement(
                      MaterialPageRoute(builder: (context) => MainScreen(
                        title: "",),));
                }, child: const Text("Continue"));
            }
          ),
          const Spacer(flex: 1,),
        ],),
      ),
    );
  }
}
