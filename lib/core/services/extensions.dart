import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../gen/colors.gen.dart';
import '../../translations/locale_keys.g.dart';

extension DateExtension on DateTime? {
  String toBackEndDateOnly() {
    return this == null ? "----" : toString().split(' ')[0];
  }

  String toDetailedArabicDate() {
    return this == null ? "----" : DateFormat.yMMMMEEEEd('ar_SA').format(this!);
  }

  String toDetailedEnglishDate() {
    return this == null ? "----" : DateFormat.yMMMMEEEEd('en_US').format(this!);
  }
  String toDetailedDate() {
    return this == null ? "----" : DateFormat('EEE, MMM d, yyyy').format(this!);
  }

  String toBackendDate() {
    return this == null ? "----" : DateFormat('yyyy-MM-dd').format(this!);
  }

  String toEnglishTime() {
    return this == null ? "----" : DateFormat('hh:mm:ss').format(this!);
  }

  String toAppDate() {
    return this == null
        ? "       "
        : DateFormat("d MMM yyyy").format(this ?? DateTime.now());
  }

  String toAppArabicDate() {
    return this == null ? "----" : DateFormat.yMMMMd('ar_SA').format(this!);
  }

  String toAppEnglishDate() {
    return this == null ? "    " : DateFormat.yMMMMd('en_US').format(this!);
  }

  Map<String, int> toDateOfBirthMapFromDateTime() => <String, int>{
        "day": this?.day ?? 1,
        "month": this?.month ?? 1,
        "year": this?.year ?? 1970
      };
}

extension StringExtension on String {
  String toParsableString() {
    return trim().isEmpty ? "0" : replaceAll(",", ".");
  }

  String toBearerToken() {
    return isEmpty ? "" : "Bearer $this";
  }

  bool isNetworkImageUrl() {
    return (contains("http") || contains("https") && isNotEmpty) ? true : false;
  }

  String toCurrency(BuildContext context) {
    double number = double.parse(this);
    return NumberFormat.simpleCurrency(
            locale: "ar_SA", name: " ${LocaleKeys.aed.tr()} ")
        .format(number);
  }
}

extension MoneyExtention on int {
  String toUSDPrice() {
    // return NumberFormat.currency(
    //         locale: "en_US", symbol: "\$", decimalDigits: 0)
    //     .format(this);
    return NumberFormat.simpleCurrency(decimalDigits: 0).format(this);
  }
}

extension BoolExtension on bool {
  bool toggle() {
    return !this;
  }
}

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  DefaultTextStyle get defaultTextStyle => DefaultTextStyle.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get size => MediaQuery.sizeOf(this);

  NavigatorState get navigator => Navigator.of(this);

  FocusScopeNode get focusScope => FocusScope.of(this);

  ScaffoldState get scaffold => Scaffold.of(this);

  SizedBox get vSpaceBoxZero => const SizedBox(
        height: 0,
      );

  SizedBox get vSpaceBox5 => SizedBox(
        height: 5.h,
      );

  SizedBox get vSpaceBox6 => SizedBox(
        height: 6.h,
      );
  SizedBox get vSpaceBox8 => SizedBox(
        height: 8.h,
      );

  SizedBox get vSpaceBox10 => SizedBox(
        height: 10.h,
      );
  SizedBox get vSpaceBox12 => SizedBox(
        height: 12.h,
      );
  SizedBox get vSpaceBox14 => SizedBox(
        height: 14.h,
      );
  SizedBox get vSpaceBox16 => SizedBox(
        height: 16.h,
      );
  SizedBox get vSpaceBox18 => SizedBox(
        height: 18.h,
      );

  SizedBox get vSpaceBox20 => SizedBox(
        height: 20.h,
      );
  SizedBox get vSpaceBox25 => SizedBox(
        height: 205.h,
      );
  SizedBox get vSpaceBox30 => SizedBox(
        height: 30.h,
      );
  SizedBox get vSpaceBox40 => SizedBox(
        height: 40.h,
      );
  SizedBox get vSpaceBox50 => SizedBox(
        height: 50.h,
      );
  SizedBox get vSpaceBox60 => SizedBox(
        height: 60.h,
      );

  SizedBox get hSpaceBox2 => SizedBox(
        width: 2.w,
      );
  SizedBox get hSpaceBox6 => SizedBox(
        width: 6.w,
      );
  SizedBox get hSpaceBox10 => SizedBox(
        width: 10.w,
      );
  SizedBox get hSpaceBox16 => SizedBox(
        width: 16.w,
      );
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);
}

extension MaterialStateHelpers on Iterable<MaterialState> {
  bool get isHovered => contains(MaterialState.hovered);
  bool get isFocused => contains(MaterialState.focused);
  bool get isPressed => contains(MaterialState.pressed);
  bool get isDragged => contains(MaterialState.dragged);
  bool get isSelected => contains(MaterialState.selected);
  bool get isScrolledUnder => contains(MaterialState.scrolledUnder);
  bool get isDisabled => contains(MaterialState.disabled);
  bool get isError => contains(MaterialState.error);
}

extension BottomBarIcon on Widget {
  Widget toBarDesign() {
    return Container(
      padding: EdgeInsets.all(8.r),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: this,
    );
  }

  Widget toActiveBarIcon() {
    return Column(
      children: <Widget>[
        AnimatedScale(
            scale: 1.1, duration: const Duration(seconds: 1), child: this),
        Transform.translate(
          offset: Offset(0, 25.h),
          child: Container(
            height: 2,
            width: 40,
            decoration: BoxDecoration(
                color: ColorName.bodyBlack,
                borderRadius: BorderRadius.circular(50)),
          ),
        )
      ],
    );
  }
}


