import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:whatsapp_clone/Features/Theme/Custom_Theme.dart';
import 'package:whatsapp_clone/Utils/CustomIconButton.dart';
import 'package:whatsapp_clone/Utils/CustomtextField.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  late TextEditingController codeController;

  @override
  void initState() {
    codeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Text(
          'Verify your number',
          style: TextStyle(color: context.Ctheme.AuthAppbarTextC),
        ),
        centerTitle: true,
        actions: [CustomIconButton(onTap: () {}, icon: Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: RichText(
                softWrap: true,
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(color: context.Ctheme.greyColor),
                  children: [
                    TextSpan(
                      text:
                          "You've tried to register +251935838471. before requesting an SMS or Call with your code.",
                    ),
                    TextSpan(
                      text: "Wrong number?",
                      style: TextStyle(
                        color: context.Ctheme.blueColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            20.h.heightBox,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: CustomizedTextfield(
                hintText: "- - -  - - -",
                fontSize: 30.sp,
                autoFocus: true,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  // if (value.length == 6) {
                  //   return verifySmsCode(context, ref, value);
                  // }
                },
              ),
            ),
            20.h.heightBox,
            Text(
              'Enter 6-digit code',
              style: TextStyle(color: context.Ctheme.greyColor),
            ),
            30.h.heightBox,
            Row(
              children: [
                Icon(Icons.message, color: context.Ctheme.greyColor),
                const SizedBox(width: 20),
                Text(
                  'Resend SMS',
                  style: TextStyle(
                    color: context.Ctheme.greyColor,
                  ),
                ),
              ],
            ),
            10.h.heightBox,
            Divider(
              color: context.Ctheme.greyColor!.withOpacity(.2),
            ),
            10.h.heightBox,
            Row(
              children: [
                Icon(Icons.phone, color: context.Ctheme.greyColor),
                20.w.widthBox,
                Text(
                  'Call Me',
                  style: TextStyle(
                    color: context.Ctheme.greyColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
