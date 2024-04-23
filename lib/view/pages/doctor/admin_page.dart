import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/gen/colors.gen.dart';
import 'package:gluco_guide/view/pages/patient/auth/register_page.dart';
import '../../../core/services/log_manager.dart';
import '../../../gen/assets.gen.dart';
import '../../../providers/loading/is_loading_provider.dart';
import '../../organisms/loading_overlay.dart';
import 'auth/doctor_login_page.dart';
import 'auth/doctor_register_page.dart';

class AdminPage extends ConsumerStatefulWidget {
  const AdminPage({super.key});

  @override
  ConsumerState<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends ConsumerState<AdminPage> {
  @override
  Widget build(BuildContext context) {
    ref.listen<bool>(isLoadingProvider, (bool? previous, bool isLoading) {
      LogManager.logToConsole(
          "the previous state of loading is $previous and the next state is $isLoading");
      if (isLoading) {
        LoadingOverlay.instance().show(context: context);
      } else {
        LoadingOverlay.instance().hide();
      }
    });

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.images.logo.path),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  context.navigator.push(MaterialPageRoute(builder: (context) => const RegisterPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(10.r),
                  width: 110.w,
                  decoration: BoxDecoration(
                      color: ColorName.primaryColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15.r)),
                  child:  Column(
                    children: [
                      Icon(Icons.person, size: 80.w, color: Colors.white),
                      Text(
                        "Patient",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      )
                    ],
                  ),
                ),
              ),
               SizedBox(width: 50.w,),
              InkWell(
                    onTap: (){
                      context.navigator.push(MaterialPageRoute(builder: (context) => const DoctorRegisterPage()));

                    },
                child: Container(
                  padding: EdgeInsets.all(10.r),
                  width: 110.w,
                  decoration: BoxDecoration(
                      color: ColorName.primaryColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15.r)),
                  child:  Column(
                    children: [
                      SvgPicture.asset(Assets.icons.doctor.path,color: Colors.white,width: 80.w,),
                      Text(
                        "Doctor",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      )
                    ],
                  ),
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}
