import 'package:flutter/material.dart';
import 'package:gluco_guide/core/services/extensions.dart';

class PatientHealthCard extends StatelessWidget {
  const PatientHealthCard({super.key, this.weight, this.height, this.bgl, this.waistCircumference, this.neckCircumference, this.hipCircumference, this.lifeStyleType, this.diabetesType, this.goal, });
  final String? weight;
  final String? height;
  final String? bgl;
  final String? waistCircumference ;
  final String? neckCircumference;
  final String? hipCircumference;
  final String? lifeStyleType;
  final String? diabetesType;
  final String? goal;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            Text(
              "Health Report ",style:context.textTheme.titleLarge,
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
                    "Weight",
                    style: context.textTheme.labelSmall,
                  ),
                  Text(
                    "$weight kg",
                    textAlign: TextAlign.end,
                    style: context.textTheme.labelSmall,
                  ),
                ]),
                TableRow(children: <Widget>[
                  Text(
                    "Height",
                    style: context.textTheme.labelSmall,
                  ),
                  Text(
                    "$height cm",
                    textAlign: TextAlign.end,
                    style: context.textTheme.labelSmall,
                  ),
                ]),
        TableRow(children: <Widget>[
          Text(
            "BGL",
            style: context.textTheme.labelSmall,
          ),
          Text(
            "$bgl",
            textAlign: TextAlign.end,
            style: context.textTheme.labelSmall,
          ),
        ]),
        TableRow(children: <Widget>[
          Text(
            "Waist Circumference",
            style: context.textTheme.labelSmall,
          ),
          Text(
            "$waistCircumference cm",
            textAlign: TextAlign.end,
            style: context.textTheme.labelSmall,
          ),
        ]),

        TableRow(children: <Widget>[
          Text(
            "Neck Circumference",
            style: context.textTheme.labelSmall,
          ),
          Text(
            "$neckCircumference cm",
            textAlign: TextAlign.end,
            style: context.textTheme.labelSmall,
          ),
        ]),
        TableRow(children: <Widget>[
          Text(
            "Hip Circumference",
            style: context.textTheme.labelSmall,
          ),
          Text(
            "$hipCircumference cm",
            textAlign: TextAlign.end,
            style: context.textTheme.labelSmall,
          ),
        ]),

        TableRow(children: <Widget>[
          Text(
            "Life Style Type",
            style: context.textTheme.labelSmall,
          ),
          Text(
            lifeStyleType ?? "",
            textAlign: TextAlign.end,
            style: context.textTheme.labelSmall,
          ),
        ]),
        TableRow(children: <Widget>[
          Text(
            "Diabetes Type",
            style: context.textTheme.labelSmall,
          ),
          Text(
            "$diabetesType",
            textAlign: TextAlign.end,
            style: context.textTheme.labelSmall,
          ),
        ]),
                 TableRow(children: <Widget>[
                   Text(
                     "Patient Goal",
                     style: context.textTheme.labelSmall,
                   ),
                   Text(
                     "$goal",
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
