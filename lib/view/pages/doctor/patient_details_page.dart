import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/providers/local/doctor_local_provider.dart';
import '../../../ data/models/patient/patient_model/patient_model.dart';
import '../../../core/services/util.dart';
import '../../../gen/assets.gen.dart';
import '../../organisms/illnesses_card.dart';
import '../../organisms/patient_health_card.dart';
import '../../organisms/patient_personal_card.dart';
import '../../organisms/recommendations_card.dart';
import '../../organisms/results_card.dart';

class PatientDetailsPage extends StatelessWidget {
  const PatientDetailsPage({super.key, required this.patientData});
  final Patient? patientData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Patient Details"),
        actions: [
          Consumer(
            builder: (context, ref, child) => IconButton(
              onPressed: () {
                String? doctorMobile = ref.read(doctorLocalProvider)?.mobile;
                Utils.instance().launchWhatsappBrowser("+2$doctorMobile");
              },
              icon: Image.asset(
                Assets.icons.whatsappDark.path,
                width: 50,
                height: 50,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              PatientPersonalCard(
                name: patientData?.name,
                email: patientData?.email,
                phone: patientData?.mobile,
                age: patientData?.age.toString(),
                gender: patientData?.gender,
              ),
              context.vSpaceBox8,
              PatientHealthCard(
                weight: patientData?.weight,
                height: patientData?.height,
                bgl: patientData?.bgl,
                waistCircumference: patientData?.waistCircumference,
                neckCircumference: patientData?.neckCircumference,
                hipCircumference: patientData?.hipCircumference,
                lifeStyleType: patientData?.lifestyleType,
                diabetesType: patientData?.diabetesType,
                goal: patientData?.results?.goal,
              ),
              context.vSpaceBox8,
              SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      var illnessData = patientData?.illnesses?[index];
                      return
                        IllnessesCard(
                      illnessTitle: illnessData?.nameEn,
                    );},
                    itemCount: patientData?.illnesses?.length,
                  )),
              context.vSpaceBox8,
              PatientResultsCard(
                bmr: patientData?.results?.bmr,
                bmi: patientData?.results?.bmi,
                bfp: patientData?.results?.bfp,
                tdee: patientData?.results?.tdee,
              ),
              context.vSpaceBox16,
              RecommendationsCard(
                calories: patientData?.results?.tdee,
                proteins: patientData?.results?.proteins,
                carbs: patientData?.results?.carbs,
                fats: patientData?.results?.fats,
              )
            ],
          ),
        ),
      ),
    );
  }
}
