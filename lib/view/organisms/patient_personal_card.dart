import 'package:flutter/material.dart';
import 'package:gluco_guide/core/services/extensions.dart';

class PatientPersonalCard extends StatelessWidget {
  const PatientPersonalCard({super.key, this.name, this.email, this.phone,this.gender, this.age});
  final String? name;
  final String? email;
  final String? phone;
  final String? age ;
  final String? gender;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(

            children: [
              Text(name??"",style:context.textTheme.titleLarge,),
              Text(email??"",style:context.textTheme.titleSmall,),
              Text(phone??"",style:context.textTheme.titleSmall),
              Text("$age years",style:context.textTheme.titleSmall,),
              Text(gender??"",style:context.textTheme.titleSmall,),

            ],
          ),
        ),
      ),
    );
  }
}
