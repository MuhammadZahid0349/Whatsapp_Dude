import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/Constant/ConstColor.dart';
import 'package:whatsapp_clone/Features/Theme/Custom_Theme.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
      backgroundColor: ConstColor.bgColor,
      scaffoldBackgroundColor: ConstColor.bgColor,
      extensions: [CustomThemeExtension.darkMode],
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(fontSize: 18.sp),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: ConstColor.logoColor2,
        foregroundColor: ConstColor.bgColor,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      )),
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: ConstColor.greyBackground,
          modalBackgroundColor: ConstColor.greyBackground,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.r),
          ))),
      dialogBackgroundColor: ConstColor.greyBackground,
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      )

      //////////////////////
      );
}
