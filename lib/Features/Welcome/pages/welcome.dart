import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:whatsapp_clone/Constant/ConstColor.dart';
import 'package:whatsapp_clone/Features/Theme/Custom_Theme.dart';
import 'package:whatsapp_clone/Features/Welcome/pages/privacy_and_terms.dart';
import 'package:whatsapp_clone/Utils/Custombutton.dart';
import 'package:whatsapp_clone/Utils/Languagebutton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ConstColor.bgColor,
      body: Column(
        children: [
          20.h.heightBox,
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.h, vertical: 10.w),
              child: Image.asset(
                "assets/images/circle.png",
                color: context.Ctheme.circleImageColor,
              ),
            ),
          )),
          20.h.heightBox,
          Expanded(
              child: Column(
            children: [
              "Welcome to Whatsapp"
                  .text
                  .size(23.sp)
                  // .color(Colors.black)
                  .fontWeight(FontWeight.w500)
                  .make(),
              PrivacyAndTerms(),
              10.h.heightBox,
              CustomButton(
                onPressed: () {},
                text: "Agree and Continue",
              ),
              Spacer(),
              LanguageButton(),
              60.h.heightBox,
            ],
          ))
        ],
      ),
    );
  }
}
