import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:whatsapp_clone/Features/Theme/Custom_Theme.dart';

showAlertDialog({
  required BuildContext context,
  required String message,
  String? btnText,
}) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(
            message,
            style: TextStyle(
              color: context.Ctheme.greyColor,
              fontSize: 15.sp,
            ),
          ),
          contentPadding: EdgeInsets.fromLTRB(20.h, 20.w, 20.w, 0),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  btnText ?? "OK",
                  style: TextStyle(color: context.Ctheme.circleImageColor),
                ))
          ],
        );
      });
}
