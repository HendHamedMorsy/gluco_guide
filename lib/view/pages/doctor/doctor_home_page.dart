import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import '../../../ data/models/patient/patient_model/patient_model.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/services/log_manager.dart';
import '../../../providers/doctor/auth/providers/doctors_list_future_provider.dart';
import '../../../translations/locale_keys.g.dart';
import '../../atoms/app_loading.dart';
import '../../molcules/doctor_user_list_tile.dart';
import '../../molcules/no_data.dart';
import 'auth/doctor_profile_page.dart';
import 'patient_details_page.dart';

class DoctorHomePage extends StatelessWidget {
  const DoctorHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          centerTitle: true,
          title: Text("Your Patients", style: context.textTheme.titleLarge),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                  onPressed: () {
                    context.navigator.push(MaterialPageRoute(builder: (context) => DoctorProfilePage(),));
                  },
                  icon: const Icon(
                    Icons.person,
                    size: 35,
                  )),
            )
          ],
        ),
        body:
        Padding(
          padding: AppConstants.shared.defaultScaffoldPadding,
          child: Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                return ref.watch(allPatientsFutureProvider).when(
                    skipLoadingOnRefresh: false,
                    skipLoadingOnReload: false,
                    data: (List<Patient?>? patientsList) {
                      return patientsList?.isEmpty == true
                          ? NoData(
                        title: LocaleKeys.emptyWithInput
                            .tr(args: <String>["Patients"]),
                      )
                          : ListView.separated(
                          separatorBuilder: (_, __) => context.vSpaceBox16,
                          itemCount: patientsList?.length ?? 0,
                          itemBuilder: (BuildContext context, int index) {
                            Patient? patientData =
                            patientsList?[index];
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                              child:  DoctorUserListTile(
                                name: patientData?.name,
                                weight: patientData?.weight,
                                age:patientData?.age.toString(),
                                onTap: (){
                                  context.navigator.push(MaterialPageRoute(builder: (context) =>  PatientDetailsPage(patientData: patientData ,),));
                                },
                              )
                            );
                          });
                    },
                    error: (Object error, StackTrace stackTrace) {
                      LogManager.logToConsole(error, "error");
                      return const Center(
                        child: Text(
                          "We couldn't load Patients",
                        ),
                      );
                    },
                    loading: () => const AppLoading());
              }),
        )

    );
  }
}
