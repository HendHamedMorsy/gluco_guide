import 'package:flutter/material.dart';
import 'package:gluco_guide/core/services/extensions.dart';

import '../../../gen/assets.gen.dart';
import '../../organisms/illnesses_card.dart';
import '../../organisms/patient_health_card.dart';
import '../../organisms/patient_personal_card.dart';
import '../../organisms/recommendations_card.dart';
import '../../organisms/results_card.dart';

class PatientDetailsPage extends StatelessWidget {
  const PatientDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: const Text("Patient Details"),actions: [IconButton(onPressed: (){}, icon: Image.asset(Assets.icons.whatsappDark.path,width: 50,height: 50,),)],),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              PatientPersonalCard(
                name :"Hend Hamed",
                email: "hendhamedmorsy@gmail.com",
                phone: "01093279897",
                age :"26",
                gender: "Female",
              ),
              context.vSpaceBox8,
              PatientHealthCard(
                weight: "75.8",
                height: "162",
                bgl: "150.00",
                waistCircumference: "100.00",
                neckCircumference: "100.00",
                hipCircumference: "100.00",
                lifeStyleType: "moderate activity",
                diabetesType: "2",
                goal: "Loose weight",
              ),
              context.vSpaceBox8,
              IllnessesCard(),
              context.vSpaceBox8,
              PatientResultsCard(
                bmr: "1484.18",
                bmi: "26.67",
                bfp: "6.64",
                tdee: "1284.18",
              ),
              context.vSpaceBox16,
              RecommendationsCard()
            ],
          ),
        ),
      ),
    );
  }
}
