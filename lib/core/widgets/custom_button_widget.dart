import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jacksi_ltd_task/core/themes/images.dart';
import '../themes/colors.dart';
import '../themes/dimens.dart';
import 'custom_text_widget.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    Key? key,
    this.text = '',
    this.onPressed,
    this.width,
    this.height,
    this.radius,
    this.colorButton = ThemeColors.primary,
    this.textColor = ThemeColors.white,
    this.fontWeight = FontWeight.w400,
    this.textSize = 13,
    this.borderColor = ThemeColors.primary, this.loading = false, this.icon,
  }) : super(key: key);

  final String? text;
  final Color textColor;
  final Color colorButton;
  final Color borderColor;
  final double textSize;
  final double? radius;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final bool loading;
  final FontWeight fontWeight;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 60.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? Dimens.cornerRadius),
        ),
        color: colorButton,
        border: Border.all(color: borderColor)
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: const BorderRadius.all(
          Radius.circular(Dimens.cornerRadius),
        ),
          onTap: onPressed,
          child: Container(
            alignment: Alignment.center,
            child: loading ? const CircularProgressIndicator(color: ThemeColors.white,) : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(icon != null) Padding(
                  padding: const EdgeInsetsDirectional.only(end: 12),
                  child: SvgPicture.asset(
                          icon!,
                          width: 24,
                        ),
                ),
                      CustomTextWidget(
                  textAlign: TextAlign.center,
                  title: text ?? '',
                  color: textColor,
                  fontWeight: fontWeight,
                  size: textSize,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
