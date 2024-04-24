import 'package:flutter/material.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import '../../../ data/models/patient/patient_model/patient_model.dart';

class FoodGroupCard extends StatelessWidget {
  const FoodGroupCard({super.key, this.diet});
  final Diet? diet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child:Column(
          children: [
            Text(diet?.nameEn ?? "",style: context.textTheme.titleLarge,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Table(
                children:  <TableRow>[
                  TableRow(children: <Widget>[
                    Text(
                      "Calories",
                      style: context.textTheme.labelSmall,
                    ),
                    Text(
                      diet?.calories ?? "",
                      textAlign: TextAlign.end,
                      style: context.textTheme.labelSmall,
                    ),
                  ]),
                  TableRow(children: <Widget>[
                    Text(
                      "Protein",
                      style: context.textTheme.labelSmall,
                    ),
                    Text(
                      diet?.proteins ?? "",
                      textAlign: TextAlign.end,
                      style: context.textTheme.labelSmall,
                    ),
                  ]),
                  TableRow(children: <Widget>[
                    Text(
                      "Carbs",
                      style: context.textTheme.labelSmall,
                    ),
                    Text(
                      diet?.carbs ?? "",
                      textAlign: TextAlign.end,
                      style: context.textTheme.labelSmall,
                    ),
                  ]),
                  TableRow(children: <Widget>[
                    Text(
                      "Fats",
                      style: context.textTheme.labelSmall,
                    ),
                    Text(
                      diet?.fats ?? "",
                      textAlign: TextAlign.end,
                      style: context.textTheme.labelSmall,
                    ),
                  ]),


                ],
              ),
            )
            ,
          ],) ,
      ),
    );






  }
}
