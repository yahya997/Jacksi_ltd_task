import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    Key? key,
    this.title,
    this.keyValue,
    this.color = Colors.black,
    this.size = 14,
    this.fontWeight = FontWeight.w400,
    this.paddingBottom,
    this.decoration,
    this.textOverflow,
    this.paddingStart,
    this.spOff = false,
    this.paddingTop,
    this.decorationThickness,
    this.height,
    this.colorDecoration,
    this.fontFamily,
    this.maxLine,
    this.paddingEnd,
    this.textAlign = TextAlign.start,
    this.listShadow,
    this.textDirection,
  }) : super(key: key);
  final String? title;
  final Color color;
  final double size;
  final double? paddingStart;
  final double? paddingEnd;
  final double? paddingTop;
  final Color? colorDecoration;
  final double? paddingBottom;
  final List<Shadow>? listShadow;
  final double? height;
  final bool spOff;
  final double? decorationThickness;
  final TextDecoration? decoration;
  final TextOverflow? textOverflow;
  final FontWeight fontWeight;
  final String? fontFamily;
  final Key? keyValue;
  final TextAlign textAlign;
  final int? maxLine;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: textDirection ?? Directionality.of(context),
      child: Container(
        padding: EdgeInsetsDirectional.only(
            top: paddingTop ?? 0,
            start: paddingStart ?? 0,
            bottom: paddingBottom ?? 0,
            end: paddingEnd ?? 0),
        child: Text(
          title?.toString() ?? '',
          textDirection: textDirection ?? Directionality.of(context),
          overflow: textOverflow,
          textAlign: textAlign,
          key: keyValue,
          softWrap: true,
          maxLines: maxLine,
          style: TextStyle(
            color: color,
            height: height,
            shadows: listShadow,
            decorationThickness: decorationThickness,
            decorationColor: colorDecoration,
            fontFamily: fontFamily,
            decoration: decoration,
            fontWeight: fontWeight,
            fontSize: spOff ? size : size.sp,
          ),
        ),
      ),
    );
  }
}
