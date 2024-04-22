import 'package:flutter/material.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import '../../molcules/doctor_user_list_tile.dart';
import 'auth/doctor_profile_page.dart';
import 'patient_details_page.dart';

class DoctorHomePage extends StatelessWidget {
  const DoctorHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          centerTitle: true,
          title: Text("Your Patient", style: context.textTheme.titleLarge),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                  onPressed: () {
                    context.navigator.push(MaterialPageRoute(builder: (context) => DoctorProfilePage(),));
                  },
                  icon: const Icon(
                    Icons.person,
                    size: 35,
                  )),
            )
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) =>  DoctorUserListTile(
            name: "Abdelrahmen Ramadan",
            weight: "75.10",
            age: "26",
            onTap: (){
              context.navigator.push(MaterialPageRoute(builder: (context) => PatientDetailsPage(),));
            },
          ),
          itemCount: 10,
        ));
  }
}
