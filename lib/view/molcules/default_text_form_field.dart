import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/services/log_manager.dart';
import '../../gen/colors.gen.dart';

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField({
    this.suffixWidth,
    super.key,
    this.label,
    this.validator,
    this.action,
    this.type,
    this.secure = false,
    this.errorText,
    this.focusNode,
    this.controller,
    this.hint,
    this.suffixIcon,
    this.readOnly = false,
    this.initialValue,
    this.isLTR = false,
    this.onTap,
    this.interactivity = true,
    this.maxLines = 1,
    this.maxLength,
    this.onEditingComplete,
    this.onChanged,
    this.enabled,
    this.onFieldSubmitted,
    this.inputFormatters,
    this.suffixText,
    this.innerTextInputStyle,
    this.autovalidateMode,
    this.onTapOutside
  });

  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final String? Function(String?)? validator;
  final String? suffixText;
  final TextInputAction? action;
  final TextInputType? type;
  final bool secure;
  final bool readOnly;
  final String? errorText;
  final FocusNode? focusNode;
  final Widget? suffixIcon;
  final VoidCallback? onTap;
  final bool interactivity;
  final int? maxLines;
  final Function? onEditingComplete;
  final Function(String)? onChanged;
  final int? maxLength;
  final String? initialValue;
  final bool isLTR;
  final bool? enabled;
  final double? suffixWidth;
  final List<TextInputFormatter>? inputFormatters;
  final TextStyle? innerTextInputStyle;
  final ValueChanged<String>? onFieldSubmitted;
  final AutovalidateMode? autovalidateMode;
  final Function(PointerDownEvent)? onTapOutside;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (PointerDownEvent event) {
        LogManager.logToConsole('onTapOutside');
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onFieldSubmitted: onFieldSubmitted,
      autovalidateMode: autovalidateMode,
      cursorColor: ColorName.primaryColor,
      focusNode: focusNode,
      enabled: enabled,
      // onTapOutside: (_) => Helpers.shared.dismissKeyboard(context),
      initialValue: initialValue,
      keyboardType: type ?? TextInputType.text,
      //textDirection: isLTR ? ui.TextDirection.ltr : ui.TextDirection.rtl,
      textDirection: ui.TextDirection.ltr,

      style: innerTextInputStyle ??
          Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: ColorName.textBlack),
      controller: controller,
      validator: validator,
      enableInteractiveSelection: interactivity,
      obscureText: secure,
      inputFormatters: inputFormatters,
      obscuringCharacter: '*',
      onTap: onTap,
      onEditingComplete: onEditingComplete as void Function()?,
      onChanged: onChanged,
      maxLines: maxLines,
      maxLength: maxLength,
      cursorWidth: 2.w,
      readOnly: readOnly,
      cursorRadius: Radius.circular(1.r),
      textInputAction: action,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: suffixIcon,
        suffixIconConstraints: BoxConstraints(minWidth: suffixWidth ?? 0),
        errorText: errorText,
        labelText: label,
      ),
    );
  }
}
