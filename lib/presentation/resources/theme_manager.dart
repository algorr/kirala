import 'package:flutter/material.dart';
import 'package:kirala/presentation/resources/color_manager.dart';
import 'package:kirala/presentation/resources/font_manager.dart';
import 'package:kirala/presentation/resources/style_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
//* Main colors of the application
    primaryColor: ColorManager.primary,
    disabledColor: ColorManager.grey1,
    //splashColor: ColorManager.primaryWith70Opacity,

//* Bottom Sheet Theme
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: ColorManager.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s25),
      ),
    ),

//* CardView Theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

//* AppBar Theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      //shadowColor: ColorManager.primaryWith70Opacity,
      titleTextStyle: getRegularTextStyle(
        color: ColorManager.white,
        fontSize: FontSize.s16,
      ),
    ),

//* Button Theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      //splashColor: ColorManager.primaryWith70Opacity,
    ),

//* Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: ColorManager.white,
        foregroundColor: ColorManager.primaryWithOpacity,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: ColorManager.inputBorderColor),
          borderRadius: BorderRadius.circular(
            AppSize.s8,
          ),
        ),
      ),
    ),

//* TextTheme
    textTheme: TextTheme(
      displayLarge: getBoldTextStyle(
        color: ColorManager.black,
        fontSize: FontSize.s14,
      ),
      titleSmall: getRegularTextStyle(
        fontSize: FontSize.s14,
        color: ColorManager.black,
      ),
      titleMedium: getMediumTextStyle(
        color: ColorManager.primary,
        fontSize: FontSize.s14,
      ),
      bodySmall: getRegularTextStyle(
        fontSize: FontSize.s14,
        color: ColorManager.lightGrey,
      ),
      bodyLarge: getRegularTextStyle(
          color: ColorManager.black, fontSize: FontSize.s16),
    ),

//* Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(
        AppPadding.p8,
      ),
      hintStyle: getRegularTextStyle(
        color: ColorManager.grey1,
      ),
      labelStyle: getMediumTextStyle(color: ColorManager.darkGrey),
      errorStyle: getRegularTextStyle(color: ColorManager.error),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
      ),
    ),
  );
}
