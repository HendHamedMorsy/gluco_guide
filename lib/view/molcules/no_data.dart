import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/services/extensions.dart';
import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';

class NoData extends StatelessWidget {
  const NoData(
      {this.onTap,
      super.key,
      this.internalIcon,
      this.title,
      this.customAnimation});
  final Widget? internalIcon;
  final String? title;
  final VoidCallback? onTap;
  final Widget? customAnimation;
  // final

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            customAnimation ??
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            blurRadius: 20,
                            color: ColorName.lightOrange.withOpacity(0.7))
                      ]),
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: ColorName.progressGreen.withOpacity(0.3))),
                    child: CircleAvatar(
                      maxRadius: 40.r,
                      backgroundColor: ColorName.skyWhite,
                      child: internalIcon ??
                          Assets.images.logo
                              .image(scale: 3, color: ColorName.primaryColor),
                    ),
                  ),
                ),
            context.vSpaceBox16,
            Text(
              title ?? "Your Requested Data is Empty",
              style: context.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            Visibility(
              visible: onTap != null,
              child: IconButton(
                  onPressed: onTap,
                  icon: const Icon(
                    Icons.refresh,
                    color: ColorName.primaryColor,
                  )),
            )
            // ElevatedButton(onPressed: onTap, child: const Text("click"))
          ],
        ),
      ),
    );
  }
}
