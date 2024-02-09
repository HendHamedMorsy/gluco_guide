import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../gen/colors.gen.dart';

class WorkoutListTileCard extends StatelessWidget {
  const WorkoutListTileCard({super.key, this.name, this.desc, this.imageURL});
  final String? name;
  final String? desc;
  final String? imageURL;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),

        border: Border.all(color: ColorName.primaryColor),
      ),
      child: ListTile(
        // leading: AppImageNetwork(imageURL: imageURL),
        leading: Image.asset(imageURL ?? "",width: 100,height: 100,),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Text(name ?? ""),
        ),
        subtitle: Text(desc ?? ""),
      ),
    );
  }
}
