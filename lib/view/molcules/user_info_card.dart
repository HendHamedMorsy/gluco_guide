import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/gen/colors.gen.dart';

import '../../gen/assets.gen.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key, this.value, this.title,this.icon, this.measure, this.iconColor, this.width,  this.height});
  final String? title;
  final String? icon;
  final String? value;
  final String? measure;
  final Color? iconColor;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(6.0.w),
      child: Container(
        height:height ?? 150.h,
        width: width ?? 180,
        padding: EdgeInsets.all(6.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: ColorName.primaryColor.withOpacity(0.5)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(children: [
            Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: ColorName.primaryColor.withOpacity(0.2),
                shape: BoxShape.circle
              ),
              child:  Image.asset(icon ?? Assets.icons.height.path, scale: 1.25,)
            ),
            context.hSpaceBox10,
            Text(title ?? "", style: context.textTheme.titleMedium?.copyWith(color: ColorName.primaryColor),)
          ]),
          context.vSpaceBox16,
          Center(
          child: RichText(
          text:       TextSpan(
          text:"$value " ?? " ",
      style: context.textTheme.titleLarge?.copyWith(color: ColorName.primaryColor),

          children: <TextSpan>[
          TextSpan(
          text: measure??"",
          style: context.textTheme.bodyLarge?.copyWith(color: ColorName.primaryColor.withOpacity(0.5)),
          ),
          ],
          ),
          ),
          ),
        ],),
      ),
    );
  }

}
 