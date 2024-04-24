import 'package:flutter/material.dart';
import 'package:gluco_guide/core/services/extensions.dart';

class IllnessesCard extends StatelessWidget {
  const IllnessesCard({super.key , this.illnessTitle});
  final String? illnessTitle;

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
                physics: const NeverScrollableScrollPhysics(),
                itemCount:3,itemBuilder: (context, index) => SizedBox(
                height: 30,
                child: ListTile(
                  title: Text(illnessTitle ?? "",style: context.textTheme.labelSmall,),
                ),
              ),),
            )



          ],
        ),
      ),
    );
  }
}
