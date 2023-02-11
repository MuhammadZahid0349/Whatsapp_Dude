import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:whatsapp_clone/Features/Theme/Custom_Theme.dart';
import 'package:whatsapp_clone/Utils/Custombutton.dart';
import 'package:whatsapp_clone/Utils/CustomtextField.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  File? imageCamera;
  Uint8List? imageGallery;

  late TextEditingController usernameController;

  @override
  void initState() {
    usernameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0,
          title: Text(
            'Profile info',
            style: TextStyle(
              color: context.Ctheme.AuthAppbarTextC,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Please provide your name and an optional profile photo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: context.Ctheme.greyColor,
                ),
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(26),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.Ctheme.photoIconBgColor,
                    border: Border.all(
                      color: imageCamera == null && imageGallery == null
                          ? Colors.transparent
                          : context.Ctheme.greyColor!.withOpacity(.4),
                    ),
                    // image: imageCamera != null ||
                    //         imageGallery != null ||
                    //         widget.profileImageUrl != null
                    //     ? DecorationImage(
                    //         fit: BoxFit.cover,
                    //         image: imageGallery != null
                    //             ? MemoryImage(imageGallery!)
                    //             : widget.profileImageUrl != null
                    //                 ? NetworkImage(widget.profileImageUrl!)
                    //                 : FileImage(imageCamera!) as ImageProvider,
                    //       )
                    //     : null,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 3.w, right: 3.h),
                    child: Icon(
                      Icons.add_a_photo_rounded,
                      size: 48.sp,
                      // color: imageCamera == null &&
                      //         imageGallery == null &&
                      //         widget.profileImageUrl == null
                      //     ? context.theme.photoIconColor
                      //     : Colors.transparent,
                    ),
                  ),
                ),
              ),
              40.h.heightBox,
              Row(
                children: [
                  20.w.widthBox,
                  Expanded(
                    child: CustomizedTextfield(
                      myController: usernameController,
                      hintText: 'Type your name here',
                      textAlign: TextAlign.start,
                      autoFocus: true,
                    ),
                  ),
                  10.w.widthBox,
                  Icon(
                    Icons.emoji_emotions_outlined,
                    color: context.Ctheme.photoIconColor,
                  ),
                  10.w.widthBox,
                ],
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomButton(
          onPressed: () {},
          text: 'NEXT',
          buttonWidth: 100.w,
        ),
      ),
    );
  }
}
