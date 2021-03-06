import 'package:easy_coding/big_head_softwares.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.controller,
    this.labelText,
    this.inputTextStyle,
    this.keyboardType,
    this.filled,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
    this.suffix,
    this.prefix,
    this.readOnly,
    this.autofocus,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.minLines,
    this.maxLines,
    this.obscureText,
    this.maxLength,
    this.contentPadding,
    this.focus,
    this.borderColor,
    this.focusBorderColor,
    this.errorBorderColor,
    this.enabledBorderColor,
    this.disabledBorderColor,
    this.borderRadius,
    this.focusBorderRadius,
    this.errorBorderRadius,
    this.enabledBorderRadius,
    this.disabledBorderRadius,
    this.isEnabled,
    this.labelStyle,
    this.hintStyle,
    this.fillColor,
    this.prefixStyle,
    this.hintText,
    this.digitsOnly = false,
    this.borderWidth,
  }) : super(key: key);

  /// This will be the controller of `CustomTextField`
  final TextEditingController? controller;

  /// This will be the label Text for the `CustomTextField`
  final String? labelText;

  /// This will be the input TextStyle for the `CustomTextField`
  final TextStyle? inputTextStyle;

  ///This will be the keyboardType of `CustomTextField`
  final TextInputType? keyboardType;

  ///This will be the textInputAction of `CustomTextField`
  final TextInputAction? textInputAction;

  ///This will be the prefixIcon of `CustomTextField`
  final Widget? prefixIcon;

  ///This will be the suffixIcon of `CustomTextField`
  final Widget? suffixIcon;

  ///This will be the suffix of `CustomTextField`
  final Widget? suffix;

  ///This will be the suffixIcon of `CustomTextField`
  final Widget? prefix;

  ///This will be the readOnlyState of `CustomTextField`
  final bool? readOnly;

  ///This will be the autofocus of `CustomTextField`
  final bool? autofocus;

  ///This will happen on tapping the `CustomTextFile`
  final Function()? onTap;

  ///This is the on Change function of the `CustomTextFile`
  final Function(String)? onChanged;

  ///This is the  onFieldSubmitted function of the `CustomTextFile`
  final Function(String)? onFieldSubmitted;

  ///This will decide the minimum lines in `CustomTextField`
  final int? minLines;

  ///This will decide the minimum lines in `CustomTextField`
  final int? maxLines;

  ///This will be the obscureText status in `CustomTextField`
  final bool? obscureText;

  ///This will be the maxLength of text in `CustomTextField`
  final int? maxLength;

  ///This will be the contentPadding of text in `CustomTextField`
  final EdgeInsets? contentPadding;

  ///This is the focusNode of the textField
  final FocusNode? focus;

  ///This is the focusNode of the textField
  final Color? fillColor;

  final bool? filled;

  final Color? borderColor;
  final Color? focusBorderColor;
  final Color? errorBorderColor;
  final Color? enabledBorderColor;
  final Color? disabledBorderColor;
  final double? borderWidth;
  final String? hintText;

  final double? borderRadius;
  final double? focusBorderRadius;
  final double? errorBorderRadius;
  final double? enabledBorderRadius;
  final double? disabledBorderRadius;

  final bool? isEnabled;
  final bool digitsOnly;

  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final TextStyle? prefixStyle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: <TextInputFormatter>[
        if (digitsOnly) FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(maxLength ?? 10000),
      ],
      autofocus: autofocus ?? false,
      readOnly: readOnly ?? false,
      onTap: onTap ?? () {},
      onFieldSubmitted: onFieldSubmitted ?? (String text) {},
      onChanged: onChanged ?? (String text) {},
      minLines: minLines ?? 1,
      maxLines: maxLines ?? 1,
      keyboardType: keyboardType ?? TextInputType.text,
      textInputAction: textInputAction ?? TextInputAction.next,
      obscureText: obscureText ?? false,
      style: inputTextStyle ?? textTheme(context).bodyText2,
      controller: controller,
      decoration: _decoration(
        context,
        contentPadding: contentPadding,
      ),
      focusNode: focus,
    );
  }

  InputDecoration _decoration(
    BuildContext context, {
    EdgeInsets? contentPadding,
  }) {
    return InputDecoration(
      suffix: suffix,
      contentPadding: contentPadding ??
          const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      labelText: labelText,
      hintText: hintText,
      labelStyle: labelStyle ??
          textTheme(context).bodyText2!.copyWith(color: Colour.lightGrey),
      prefixStyle: prefixStyle ??
          textTheme(context).bodyText2!.copyWith(color: Colour.lightGrey),
      prefix: prefix ?? const SizedBox.shrink(),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      hintStyle: hintStyle ??
          textTheme(context).bodyText2!.copyWith(color: Colour.lightGrey),
      enabled: isEnabled ?? true,
      fillColor: fillColor,
      filled: filled ?? false,
      border: _inputBorder(
        color: borderColor ?? primaryColor(context),
        radius: borderRadius,
      ),
      focusedBorder: _inputBorder(
        color: focusBorderColor ?? primaryColor(context),
        radius: focusBorderRadius,
      ),
      enabledBorder: _inputBorder(
        color: enabledBorderColor ?? primaryColor(context),
        radius: enabledBorderRadius,
      ),
      errorBorder: _inputBorder(
        color: errorBorderColor ?? Colors.red,
        radius: errorBorderRadius,
      ),
      disabledBorder: _inputBorder(
        color: disabledBorderColor ?? Colors.grey,
        radius: disabledBorderRadius,
      ),
    );
  }

  OutlineInputBorder _inputBorder({Color? color, double? radius}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 10.0)),
      borderSide:
          BorderSide(color: color ?? Colors.white54, width: borderWidth ?? 1.0),
    );
  }
}
