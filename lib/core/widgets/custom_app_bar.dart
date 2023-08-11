import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jacksi_ltd_task/core/themes/colors.dart';
import '../themes/images.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final double? titleSize;
  final Widget? leading;
  final bool centerTitle;
  final Color? color;
  final Color? statusBarColor;
  final Brightness? statusBarIconBrightness;
  final List<Widget>? actions;
  final Function()? backClick;
  final bool iconBack;

  const CustomAppBar({
    Key? key,
    this.title,
    this.leading,
    this.actions,
    this.centerTitle = true,
    this.iconBack = false,
    this.color,
    this.titleSize,
    this.statusBarColor,
    this.statusBarIconBrightness,
    this.backClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      shadowColor: Theme.of(context).scaffoldBackgroundColor,
      backgroundColor: color,
      surfaceTintColor: Colors.transparent,
      leadingWidth: iconBack ? 80.w : null,
      leading: iconBack ? leading ??
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              width: 50.w,
              margin: EdgeInsetsDirectional.only(start: 20.w),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: ThemeColors.border)
              ),
              child: SvgPicture.asset(
                Images.arrowBackIcon,
              ),
            ),
          ) : null,
      automaticallyImplyLeading: false,
      title: Text(
              title ?? '',
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
      centerTitle: centerTitle,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}
