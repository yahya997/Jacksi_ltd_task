import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jacksi_ltd_task/core/themes/dimens.dart';
import '../helpers/validate_field.dart';
import '../themes/colors.dart';
import '../themes/images.dart';
import 'custom_text_widget.dart';


class CustomTextField extends StatefulWidget {
  TextEditingController? controller;
  String? label;
  String? hint;
  TextStyle? style;
  Widget? prefixIcon;
  TextInputType? keyboardType;
  TextInputAction? inputAction;
  bool? password;
  bool? filled;
  Color? prefixColor;
  Widget? suffixIcon;
  Color? fillColor;
  Color? borderColor;
  int? maxLines;
  final bool? enabled;
  final String? validate;
  final Widget? iconWidget;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String>? onChanged;
  final TextInputFormatter? textInputFormatter;

  CustomTextField({
    super.key,
    this.controller,
    this.validate,
    this.iconWidget,
    this.label,
    this.hint,
    this.prefixIcon,
    this.keyboardType,
    this.inputAction,
    this.suffixIcon,
    this.prefixColor,
    this.borderColor,
    this.enabled = true,
    this.filled = true,
    this.maxLines = 1,
    this.fillColor = const Color(0xffffffff),
    this.password,
    this.onSubmitted,
    this.onChanged,
    this.textInputFormatter,
    this.style,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ThemeColors.primary,
      style: widget.style,
      inputFormatters: [
        if (widget.keyboardType == TextInputType.phone)
          LengthLimitingTextInputFormatter(10),
        if (widget.textInputFormatter != null)
          widget.textInputFormatter!
      ],
      controller: widget.controller,
      textInputAction: widget.inputAction,
      onTap: () {
        if (widget.password == false) {
          if (widget.controller?.text.isEmpty ?? false) return;
          if (widget.controller?.text[(widget.controller?.text.length ?? 0) - 1] != ' ') {
            widget.controller?.text = ('${widget.controller?.text ?? ''} ');
          }
          if (widget.controller?.selection ==
              TextSelection.fromPosition(TextPosition(
                  offset: (widget.controller?.text.length ?? 0) - 1))) {}
        }
      },
      validator: (value) {
        if(widget.validate != null) {
          return ValidateField.validate(value,widget.validate ?? '');
        }
        return null;
      },
        onFieldSubmitted: widget.onSubmitted,
        onChanged: widget.onChanged,
      decoration: InputDecoration(
          alignLabelWithHint: true, // Insert this line
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.borderColor ?? ThemeColors.border,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(Dimens.cornerRadius),
            ),
          ),
          errorBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.borderColor ?? ThemeColors.border,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(Dimens.cornerRadius),
            ),
          ),
          focusedErrorBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.borderColor ?? ThemeColors.border,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(Dimens.cornerRadius),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ThemeColors.primary,
            ),
          ),
          label: widget.label == null ? null :CustomTextWidget(title: widget.label ?? ''),
          hintText: widget.hint,
          hintStyle: TextStyle(
            color: ThemeColors.hintColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
          labelStyle: TextStyle(
            color: ThemeColors.hintColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,

          ),
          icon: widget.iconWidget,
          suffixIcon: widget.password == true
              ? GestureDetector(
                  onTap: _toggle,
                  child: Container(
                      width: 25.sp,
                      alignment: Alignment.center,
                      child: SvgPicture.asset(_obscureText ? Images.eyeIcon : Images.eyeSlashIcon)))
              : widget.suffixIcon,
          prefixIcon: widget.prefixIcon == null
              ? null
              : Container(
                  width: 20,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                      left: 0,
                      right: 0,
                      bottom: ((widget.maxLines ?? 1) - 1) * 18.0),
                  child: widget.prefixIcon,
                ),

          hoverColor: ThemeColors.primary,
          focusColor: ThemeColors.primary,
          disabledBorder: InputBorder.none,
          filled: widget.filled,
          fillColor: widget.fillColor),
      showCursor: true,
      maxLines: widget.maxLines,
      keyboardType: widget.keyboardType,
      obscureText: widget.password == true ? _obscureText : false,
      enabled: widget.enabled,
    );
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
