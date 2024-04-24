import 'package:flutter/cupertino.dart';
import 'package:gluco_guide/core/services/extensions.dart';

import '../molcules/user_info_card.dart';

class RecommendationsCard extends StatelessWidget {
  const RecommendationsCard({super.key, this.calories, this.proteins, this.carbs, this.fats});
  final String? calories;
  final String? proteins;
  final String? carbs ;
  final String? fats;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Recommendations",style:context.textTheme.titleLarge,
        ),
        context.vSpaceBox16,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [

            UserInfoCard(
              title: "Calories",
              width: 150,
              value: calories,
              height: 100,
            ),
            UserInfoCard(
              title: "Proteins",
              width: 150,
              value:proteins,
              height: 100,
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            UserInfoCard(
              title: "Carbs",
              width: 150,
              value:carbs,
              height: 100,
            ),
            UserInfoCard(
              title: "Fats",
              width: 150,
              value:fats,
              height: 100,
            )
          ],
        )
      ],
    );
  }
}
