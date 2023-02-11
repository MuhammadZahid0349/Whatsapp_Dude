import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:whatsapp_clone/Constant/ConstColor.dart';
import 'package:whatsapp_clone/Features/Theme/Custom_Theme.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
      child: RichText(
        softWrap: true,
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "Read Our",
            style: TextStyle(color: context.Ctheme.greyColor, height: 1.5.h),
            children: [
              TextSpan(
                  text: ' Privacy Policy ',
                  style: TextStyle(color: context.Ctheme.circleImageColor)),
              TextSpan(text: 'Tap "Agree and Continue" to accept the'),
              TextSpan(
                  text: ' Terms of Service',
                  style: TextStyle(color: context.Ctheme.circleImageColor)),
            ]),
      ),
    );
  }
}
