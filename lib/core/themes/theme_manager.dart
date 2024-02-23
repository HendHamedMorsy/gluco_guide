import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/core/services/extensions.dart';

import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';

class ThemeManager {
  ThemeManager._();
  static final ThemeManager shared = ThemeManager._();
  ThemeData getAppTheme(BuildContext context) => ThemeData(
        fontFamily: FontFamily.lato,
        useMaterial3: true,
        primaryColor: ColorName.primaryColor,
        scaffoldBackgroundColor: ColorName.skyWhite,
        textTheme: TextTheme(
          bodySmall: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.lato,
              fontSize: 10.sp,
              color: ColorName.textBlack),
          bodyMedium: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.lato,
              fontSize: 14.sp,
              height: 1.07.h,
              color: ColorName.greySmall),
          bodyLarge: TextStyle(
              fontSize: 16.sp,
              fontFamily: FontFamily.lato,
              fontWeight: FontWeight.w900,
              color: ColorName.bodyBlack),
          labelSmall: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: FontFamily.lato,
            fontWeight: FontWeight.w600,
            height: 1.67,
            letterSpacing: 0.36,
          ),
          displaySmall: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.lato,
              fontSize: 14.sp,
              color: ColorName.bodyBlack),
          displayMedium: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.lato,
              height: 2.14,
              color: ColorName.unselectedGrey),
          labelMedium: TextStyle(
            color: ColorName.greySmall,
            fontSize: 16.sp,
            fontFamily: FontFamily.lato,
            fontWeight: FontWeight.w500,
            height: 1.88,
          ),
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontFamily: FontFamily.lato,
            fontWeight: FontWeight.w900,
          ),
          labelLarge: TextStyle(
            color: ColorName.textBlack,
            fontSize: 16.sp,
            fontFamily: FontFamily.lato,
            fontWeight: FontWeight.w500,
            height: 1.88,
          ),
          titleSmall: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.lato,
              fontSize: 16.sp,
              color: ColorName.primaryColor),
          titleMedium: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.lato,
              fontSize: 16.sp,
              color: ColorName.titleText),
          titleLarge: TextStyle(
              fontWeight: FontWeight.w800,
              fontFamily: FontFamily.lato,
              fontSize: 18.sp,
              color: ColorName.titleText),
          headlineSmall: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: FontFamily.lato,
              fontSize: 16.sp,
              color: ColorName.bodyBlack),
          headlineMedium: TextStyle(
            color: ColorName.textBlack,
            fontSize: 20.sp,
            fontFamily: FontFamily.lato,
            fontWeight: FontWeight.w900,
          ),
          headlineLarge: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: FontFamily.lato,
              fontSize: 25.sp,
              color: ColorName.skyWhite),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor:  ColorName.primaryColor.withOpacity(0.8),
            minimumSize: Size.fromHeight(50.h),
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                textStyle: context.textTheme.titleLarge?.copyWith(color: Colors.white),
                backgroundColor: ColorName.primaryColor.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r)),
                minimumSize: Size(double.infinity, 56.h))),

        inputDecorationTheme: InputDecorationTheme(
          suffixIconColor: ColorName.unselectedGrey,
          prefixIconColor: ColorName.unselectedGrey,
          fillColor: ColorName.textFieldBackground,
          filled: true,
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorName.lightRed),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0.r),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0.r),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0.r),
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0.r)),
              borderSide: const BorderSide(color: ColorName.successGreen)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0.r),
            ),
          ),
          labelStyle: TextStyle(
            color: ColorName.greySmall,
            fontSize: 16.sp,
            fontFamily: FontFamily.lato,
            fontWeight: FontWeight.w500,
            height: 1.88.h,
          ),
          hintStyle: TextStyle(
            color: ColorName.unselectedGrey,
            fontSize: 14.sp,
            fontFamily: FontFamily.lato,
            fontWeight: FontWeight.w500,
            height: 1.88.h,
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 18.w, vertical: 14.h),
          errorStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: ColorName.lightRed, wordSpacing: 0, letterSpacing: 0),
        ),

        appBarTheme: AppBarTheme(
            color: ColorName.skyWhite,
            elevation: 0,
            scrolledUnderElevation: 0,
            titleTextStyle: TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: FontFamily.lato,
                fontSize: 18.sp,
                color: ColorName.textBlack),
            iconTheme: const IconThemeData(color: ColorName.textBlack)),
        iconTheme: const IconThemeData(color: ColorName.textBlack),
        primaryIconTheme: const IconThemeData(color: ColorName.textBlack),

        colorScheme: const ColorScheme.light(
          primary: ColorName.primaryColor,
        ),
        chipTheme: ChipThemeData(
          backgroundColor: Colors.white,
          selectedColor: ColorName.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
          showCheckmark: false,
          side: const BorderSide(width: 0.75, color: ColorName.primaryColor),
        ),

        // fontFamily: AppFonts.ROBOTO,
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.white,
          elevation: 4,
        ),
        textSelectionTheme: const TextSelectionThemeData(
            selectionColor: ColorName.primaryColor),
        dialogBackgroundColor: ColorName.skyWhite,

        outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
          side: const MaterialStatePropertyAll(BorderSide(color: Colors.red)),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  side: const BorderSide(
                      width: 2, color: ColorName.primaryColor),
                  borderRadius: BorderRadius.circular(10.r))),
        )),
        dividerTheme:
            const DividerThemeData(color: ColorName.dividerGrey, thickness: 1),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: true,
          selectedLabelStyle: TextStyle(
            color: Colors.black,
            fontSize: 10.sp,
            fontFamily: FontFamily.lato,
            fontWeight: FontWeight.w400,
          ),
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: ColorName.unselectedGrey,
          selectedItemColor: ColorName.bodyBlack,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          enableFeedback: true,
          showUnselectedLabels: true,
          backgroundColor: Colors.white,
          elevation: 0,
          unselectedLabelStyle: TextStyle(
            color: ColorName.unselectedGrey,
            fontSize: 10.sp,
            fontFamily: FontFamily.lato,
            fontWeight: FontWeight.w500,
          ),
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          linearMinHeight: 6.h,
          linearTrackColor: ColorName.textFieldBackground,
          color: ColorName.progressGreen,
        ),
        radioTheme: RadioThemeData(
            fillColor: MaterialStateProperty.all(ColorName.primaryColor),
            visualDensity: VisualDensity.compact),

        checkboxTheme: CheckboxThemeData(
            side:  const BorderSide(color: ColorName.primaryColor,width: 2),
            shape: const RoundedRectangleBorder(
                side: BorderSide(color: ColorName.primaryColor)),
            checkColor: MaterialStateProperty.all(Colors.white),
            ),
        listTileTheme: ListTileThemeData(
            titleTextStyle: TextStyle(
          color: ColorName.tileText,
          fontSize: 16.sp,
          fontFamily: FontFamily.lato,
          fontWeight: FontWeight.w700,
        )),

        splashColor: ColorName.primaryColor.withOpacity(0.5),
      );
}
