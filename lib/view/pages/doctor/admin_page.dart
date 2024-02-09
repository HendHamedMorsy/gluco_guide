import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/gen/colors.gen.dart';
import 'package:gluco_guide/view/pages/patient/register_page.dart';

import '../../../gen/assets.gen.dart';
import 'admin_login_page.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                        "User",
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
                      context.navigator.push(MaterialPageRoute(builder: (context) => const AdminLoginPage()));

                    },
                child: Container(
                  padding: EdgeInsets.all(10.r),
                  width: 110.w,
                  decoration: BoxDecoration(
                      color: ColorName.primaryColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15.r)),
                  child:  Column(
                    children: [
                      Icon(Icons.lock_person_outlined, size: 80.w, color: Colors.white),
                      Text(
                        "Admin",
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
