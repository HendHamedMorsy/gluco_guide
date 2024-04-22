import 'package:flutter/material.dart';
import 'package:gluco_guide/core/services/extensions.dart';

class PatientResultsCard extends StatelessWidget {
  const PatientResultsCard({super.key, this.bmr, this.bmi, this.bfp, this.tdee, });
  final String? bmr;
  final String? bmi;
  final String? bfp ;
  final String? tdee;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            Text(
              "Patient Results",style:context.textTheme.titleLarge,
            ),
            context.vSpaceBox20,
            Table(
              // children: orderData?.items
              //     ?.map(
              //       (Item item) =>
              //       TableRow(children: <Widget>[
              //         Text(
              //           item.itemName ?? "",
              //           style: context
              //               .textTheme.labelSmall,
              //         ),
              //         Text(
              //           "${item.baseNetRate} AED",
              //           textAlign: TextAlign.end,
              //           style: context
              //               .textTheme.labelSmall,
              //         ),
              //       ]),
              // )
              //     .toList() ??
              //     <TableRow>[]
              children:
              <TableRow>[
                TableRow(children: <Widget>[
                  Text(
                    "BMR",
                    style: context.textTheme.labelSmall,
                  ),
                  Text(
                    "$bmr",
                    textAlign: TextAlign.end,
                    style: context.textTheme.labelSmall,
                  ),
                ]),
                TableRow(children: <Widget>[
                  Text(
                    "BMI",
                    style: context.textTheme.labelSmall,
                  ),
                  Text(
                    "$bmi",
                    textAlign: TextAlign.end,
                    style: context.textTheme.labelSmall,
                  ),
                ]),
                TableRow(children: <Widget>[
                  Text(
                    "BFP",
                    style: context.textTheme.labelSmall,
                  ),
                  Text(
                    "$bfp",
                    textAlign: TextAlign.end,
                    style: context.textTheme.labelSmall,
                  ),
                ]),
                TableRow(children: <Widget>[
                  Text(
                    "TDEE",
                    style: context.textTheme.labelSmall,
                  ),
                  Text(
                    "$tdee",
                    textAlign: TextAlign.end,
                    style: context.textTheme.labelSmall,
                  ),
                ]),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
