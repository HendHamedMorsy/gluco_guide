import 'package:flutter/material.dart';
import '../../core/services/extensions.dart';
import 'default_text_form_field.dart';

class TextFormFieldWithTitle extends StatelessWidget {
  const TextFormFieldWithTitle(
      {required this.floatingTitle,
      super.key,
      this.hint,
      this.validator,
      this.suffixIcon,
      this.endWidget,
      this.maxLines,
      this.controller,
      this.action,
      this.keyboardType,
      this.secure = false,
      this.readOnly = false,
      this.onFieldSubmitted,
      this.onTap,
      this.hintStyle,
      this.floatingTextStyle});
  final String floatingTitle;
  final Widget? endWidget;
  final String? hint;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final int? maxLines;
  final TextEditingController? controller;
  final TextInputAction? action;
  final TextInputType? keyboardType;
  final bool secure;
  final bool readOnly;
  final ValueChanged<String>? onFieldSubmitted;
  final VoidCallback? onTap;
  final TextStyle? hintStyle;
  final TextStyle? floatingTextStyle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          floatingTitle,
          style: floatingTextStyle ?? context.textTheme.displayMedium,
        ),
        context.vSpaceBox10,
        DefaultTextFormField(
            onTap: onTap,
            hintStyle: hintStyle,
            onFieldSubmitted: onFieldSubmitted,
            readOnly: readOnly,
            controller: controller,
            hint: hint,
            validator: validator,
            secure: secure,
            action: action,
            type: keyboardType,
            maxLines: maxLines,
            suffixIcon: suffixIcon,
            autovalidateMode: AutovalidateMode.onUserInteraction),
      ],
    );
  }
}
