import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:whatsapp_clone/Constant/ConstColor.dart';
import 'package:whatsapp_clone/Features/Theme/Custom_Theme.dart';
import 'package:whatsapp_clone/Utils/CustomIconButton.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  showBottomSheet(context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 4.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: context.Ctheme.greyColor!.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(5.r)),
                ),
                20.h.heightBox,
                Row(
                  children: [
                    CustomIconButton(
                        onTap: () {
                          Get.back();
                        },
                        icon: Icons.close_outlined),
                    // IconButton(
                    //     onPressed: () {
                    //       Get.back();
                    //     },
                    //     splashColor: Colors.transparent,
                    //     iconSize: 22.sp,
                    //     splashRadius: 22.r,
                    //     padding: EdgeInsets.zero,
                    //     constraints: BoxConstraints(minWidth: 40.w),
                    //     icon: Icon(Icons.close_outlined)),
                    10.w.widthBox,
                    "App Language"
                        .text
                        .size(20.sp)
                        .fontWeight(FontWeight.w500)
                        .make()
                  ],
                ),
                10.h.heightBox,
                Divider(
                  color: context.Ctheme.greyColor!.withOpacity(0.3),
                  thickness: .5,
                ),
                RadioListTile(
                  value: true,
                  groupValue: true,
                  onChanged: (value) {},
                  activeColor: ConstColor.logoColor2,
                  title: Text("English"),
                  subtitle: Text(
                    "Phone's Language",
                    style: TextStyle(color: context.Ctheme.greyColor),
                  ),
                ),
                RadioListTile(
                  value: true,
                  groupValue: false,
                  onChanged: (value) {},
                  activeColor: ConstColor.logoColor2,
                  title: Text("American"),
                  subtitle: Text(
                    "American Language",
                    style: TextStyle(color: context.Ctheme.greyColor),
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.Ctheme.langBtnColor,
      borderRadius: BorderRadius.circular(18.r),
      child: InkWell(
        onTap: () => showBottomSheet(context),
        borderRadius: BorderRadius.circular(18.r),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.Ctheme.langBtnHighLightColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 6.w),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.language,
                color: ConstColor.logoColor1,
              ),
              10.w.widthBox,
              Text(
                "English",
                style: TextStyle(color: ConstColor.logoColor1),
              ),
              10.w.widthBox,
              Icon(
                Icons.keyboard_arrow_down,
                color: ConstColor.logoColor1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
