import 'package:flutter/material.dart';
import 'package:gluco_guide/core/services/extensions.dart';

class IllnessesCard extends StatelessWidget {
  const IllnessesCard({super.key, this.weight, this.height, this.bgl, this.waistCircumference, this.neckCircumference, this.hipCircumference, this.lifeStyleType, this.diabetesType, });
  final String? weight;
  final String? height;
  final String? bgl;
  final String? waistCircumference ;
  final String? neckCircumference;
  final String? hipCircumference;
  final String? lifeStyleType;
  final String? diabetesType;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            Text(
              "Illnesses",style:context.textTheme.titleLarge,
            ),

            SizedBox(
              height: 100,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount:3,itemBuilder: (context, index) => SizedBox(
                height: 30,
                child: ListTile(
                  title: Text("Hypertension",style: context.textTheme.labelSmall,),
                ),
              ),),
            )



          ],
        ),
      ),
    );
  }
}
