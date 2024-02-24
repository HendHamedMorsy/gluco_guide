import 'package:easy_localization/easy_localization.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/translations/locale_keys.g.dart';

import '../../core/services/extensions.dart';
import '../../gen/colors.gen.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard(
      {required this.title,
        required this.desc,
        super.key,
        this.onExpansionChanged,
        this.faqKey});
  final Function(bool)? onExpansionChanged;
  final String? title;
  final String? desc;
  final Key? faqKey;

  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(
      contentPadding: EdgeInsetsDirectional.only(
          start: 20.w, end: 10.w, bottom: 10.h, top: 10.h),
      leading: CircleAvatar(
        backgroundColor: ColorName.primaryColor.withOpacity(0.2),
        maxRadius: 20.r,
        child: Icon(
          Icons.notifications,
          size: 25.h,
          color: ColorName.primaryColor,
        ),
      ),
      key: faqKey,
      title: Text(
        title ?? "",
        style: context.textTheme.titleMedium,
      ),
      elevation: 0,
      initialElevation: 0,
      onExpansionChanged: onExpansionChanged,
      expandedColor: ColorName.cardGrey,
      baseColor: ColorName.cardGrey,
      borderRadius: BorderRadius.circular(15.r),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Padding(
            padding: EdgeInsets.only(bottom: 20.0.h),
            child: Text(
              desc ?? "",
              style: context.textTheme.titleSmall,
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                  child: FilledButton(onPressed: (){}, child: Text(LocaleKeys.accept.tr()))),
               SizedBox(width: 10.h),
              Expanded(
                flex: 1,
                  child: FilledButton(onPressed: (){}, child: Text(LocaleKeys.cancel.tr()))),
          ],),
        ),




      ],
    );
  }
}
