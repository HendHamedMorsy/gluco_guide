import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/providers/local/patient_local_provider.dart';

import '../../organisms/recommendations_card.dart';
import 'food_groups_list_page.dart';

class DietRecommendationPage extends ConsumerStatefulWidget {
  const DietRecommendationPage({super.key});

  @override
  ConsumerState<DietRecommendationPage> createState() =>
      _DietRecommendationPageState();
}

class _DietRecommendationPageState
    extends ConsumerState<DietRecommendationPage> {
  @override
  Widget build(BuildContext context) {
    var patientData = ref.watch(patientLocalProvider);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RecommendationsCard(
            calories: patientData?.results?.tdee,
            proteins: patientData?.results?.proteins,
            carbs: patientData?.results?.carbs,
            fats: patientData?.results?.fats,
          ),
      Expanded(

        child: ListView.builder(
          itemCount: patientData?.diet?.length,
          itemBuilder: (context, index) {
            var  dietData = patientData?.diet?[index];
            return FoodGroupCard(
              diet:dietData ,
            );
          },),
      )
        ],
      ),
    );
  }
}
