import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/Constant/ConstColor.dart';
import 'package:whatsapp_clone/Features/Theme/Custom_Theme.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      backgroundColor: ConstColor.bgLightColor,
      scaffoldBackgroundColor: ConstColor.bgLightColor,
      extensions: [CustomThemeExtension.lightMode],
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(fontSize: 18.sp),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.dark),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: ConstColor.logoColor1,
        foregroundColor: ConstColor.bgLightColor,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      )),
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.white,
          modalBackgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.r),
          ))),
      dialogBackgroundColor: Colors.white,
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      )

      ///////////////////////
      );
}
