import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/gen/colors.gen.dart';
final AutoDisposeStateProvider<bool> switchStateProvider =
StateProvider.autoDispose<bool>((AutoDisposeStateProviderRef<bool> ref) {
  return true;
});
class ProfileListTile extends StatelessWidget {
  const ProfileListTile(
      {super.key,
      this.icon,
      this.iconSize,
      this.title, this.onTap});
  final String? title;
  final IconData? icon;
  final double? iconSize;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: ColorName.primaryColor.withOpacity(0.5))),
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          icon ?? Icons.manage_accounts_sharp,
          color: ColorName.primaryColor.withOpacity(0.7),
          size: iconSize ?? 30,
        ),
        title: Text(
          title ?? "",
          style: context.textTheme.titleLarge
              ?.copyWith(color: ColorName.primaryColor.withOpacity(0.7)),
        ),
        trailing :
        // isNotificationField == true
        //     ? Consumer(
        //      builder:(context, ref, child) =>  Transform.scale(
        //        scale: 0.8,
        //        child: Switch(
        //             value: ref.watch(switchStateProvider),
        //             onChanged: (val) async{  ref
        //                 .read(switchStateProvider.notifier)
        //                 .update((bool state) => !state);},
        //          trackOutlineColor: const MaterialStatePropertyAll(Colors.transparent),
        //          activeColor: ColorName.primaryColor,
        //
        //          inactiveThumbColor: Colors.white,
        //          inactiveTrackColor: ColorName.primaryColor.withOpacity(0.5),),
        //      ),
        //
        //     )
        //     :
        CircleAvatar(
                radius: 12,
                backgroundColor: ColorName.primaryColor.withOpacity(0.2),
                child: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: ColorName.primaryColor.withOpacity(0.7),
                  size: 15,
                )),
      ),

    );
  }
}
