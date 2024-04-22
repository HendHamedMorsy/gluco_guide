import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/gen/colors.gen.dart';

class DoctorUserListTile extends StatelessWidget {
  const DoctorUserListTile({super.key,this.name,this.weight,this.age,this.onTap});
  final String? name;
  final String? weight;
  final String? age;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: ColorName.primaryColor.withOpacity(0.5),
          shape: BoxShape.circle
        ),
          child: const Icon(Icons.person,size: 35,color: ColorName.skyWhite,)),
      title: Text(name ?? "",style: context.textTheme.displayLarge?.copyWith(color: ColorName.primaryColor.withOpacity(0.8)),),
      subtitle: Text("$weight Kg  |  $age years",style: context.textTheme.displayMedium),
    );
  }
}
