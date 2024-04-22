import 'package:flutter/material.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import '../../../molcules/doctor_user_list_tile.dart';

class   DoctorHomePage extends StatelessWidget {
  const DoctorHomePage  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: Text("Your Patient",style: context.textTheme.titleLarge),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.person,size: 35,)),
          )
        ],
      ),
        body : ListView.builder(itemBuilder: (context, index) => const DoctorUserListTile(name: "Abdelrahmen Ramadan",
        desc: "sdcfvgbhnjmk,l",),itemCount: 10,));
  }
}
