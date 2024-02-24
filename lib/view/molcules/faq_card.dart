import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/services/extensions.dart';
import '../../gen/colors.gen.dart';

class FaqCard extends StatelessWidget {
  const FaqCard(
      {required this.question,
        required this.answer,
        super.key,
        this.onExpansionChanged,
        this.faqKey});
  final Function(bool)? onExpansionChanged;
  final String? question;
  final String? answer;
  final Key? faqKey;

  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(
      contentPadding: EdgeInsetsDirectional.only(
          start: 20.w, end: 10.w, bottom: 10.h, top: 10.h),
      trailing: CircleAvatar(
        backgroundColor: ColorName.bodyBlack,
        maxRadius: 14,
        child: Icon(
          Icons.arrow_forward_rounded,
          size: 12.h,
          color: ColorName.skyWhite,
        ),
      ),
      key: faqKey,
      title: Text(
        question ?? "",
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
              answer ?? "",
              style: context.textTheme.bodyMedium,
            ),
          ),
        )
      ],
    );
  }
}
