import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/Constant/ConstColor.dart';

class CustomButton extends StatelessWidget {
  final double? buttonWidth;
  final VoidCallback onPressed;
  final String text;

  const CustomButton({
    super.key,
    this.buttonWidth,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      width: buttonWidth ?? Get.width.w - 100,
      child: ElevatedButton(
          onPressed: onPressed,
          // style: ElevatedButton.styleFrom(
          //   backgroundColor: ConstColor.logoColor2,
          //   foregroundColor: ConstColor.bgColor,
          //   splashFactory: NoSplash.splashFactory,
          //   elevation: 0,
          //   shadowColor: Colors.transparent,
          // ),
          child: Text(text.toUpperCase(),
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  // color: Colors.white,
                  color: ConstColor.bgColor,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500))),
    );
  }
}
