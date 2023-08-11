import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';
import 'dimens.dart';

/// Light theme
ThemeData themeLight(BuildContext context) => ThemeData(
  fontFamily: "Montserrat",
  useMaterial3: true,
  primaryColor: ThemeColors.primary,
  disabledColor: ThemeColors.divider,
  hintColor: ThemeColors.hint,
  cardColor: ThemeColors.white,
    cardTheme: const CardTheme(
      color: ThemeColors.fillColor,
    ),
  canvasColor: ThemeColors.primary.withOpacity(0.08),
  scaffoldBackgroundColor: ThemeColors.scaffoldBackgroundColor,
  colorScheme: const ColorScheme.light().copyWith(
    primary: ThemeColors.primary,
    background: ThemeColors.white,
  ),
  inputDecorationTheme: inputDecorationLight,
  elevatedButtonTheme: buttonThemeLight(),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: ThemeColors.white,
    selectedIconTheme: const IconThemeData(
        color: ThemeColors.primary
    ),
    unselectedIconTheme: const IconThemeData(
        color: Color(0xffB8B8B8)
    ),
    selectedLabelStyle: TextStyle(
        fontSize: Dimens.bodyLarge,
        fontWeight: FontWeight.w600,
        color: ThemeColors.primary
    ),
    unselectedLabelStyle: TextStyle(
        fontSize: Dimens.bodyLarge,
        fontWeight: FontWeight.w600,
        color: const Color(0xffB8B8B8)
    ),
  ),
  appBarTheme: const AppBarTheme().copyWith(
    backgroundColor: ThemeColors.scaffoldBackgroundColor,
    titleTextStyle: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: Dimens.titleLarge,
        color: ThemeColors.appbarTextColor,
        fontWeight: FontWeight.w700,
    ),
    iconTheme: const IconThemeData(color: ThemeColors.appbarTextColor),
    systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ),
    surfaceTintColor: ThemeColors.appbarTextColor,
    shadowColor: ThemeColors.divider,
  ),
  drawerTheme: const DrawerThemeData().copyWith(
    elevation: 0,
    surfaceTintColor: ThemeColors.white,
    backgroundColor: ThemeColors.white,
  ),
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  checkboxTheme: _checkboxThemeLight,
);



CheckboxThemeData _checkboxThemeLight = CheckboxThemeData(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
  checkColor: const MaterialStatePropertyAll(ThemeColors.text),
  fillColor: const MaterialStatePropertyAll(ThemeColors.fillColor),
);

InputDecorationTheme inputDecorationLight = InputDecorationTheme(
    border: InputBorder.none,
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: ThemeColors.primary),
    ),
    hintStyle: TextStyle(
      fontSize: Dimens.titleMedium,
      fontWeight: FontWeight.w400,
        color: ThemeColors.text
    ),
    prefixIconColor: ThemeColors.text,
    filled: true,
    fillColor: ThemeColors.fillColor);

ElevatedButtonThemeData buttonThemeLight() => ElevatedButtonThemeData(
  style: TextButton.styleFrom(
      backgroundColor: ThemeColors.primary,
      disabledBackgroundColor: ThemeColors.disabledColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      textStyle: TextStyle(
        fontSize: Dimens.bodyMedium,
        color: ThemeColors.white,
      )
  ),
);


