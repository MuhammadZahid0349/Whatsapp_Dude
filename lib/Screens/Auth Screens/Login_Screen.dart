import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:whatsapp_clone/Constant/Auth_Controller.dart';
import 'package:whatsapp_clone/Constant/ConstColor.dart';
import 'package:whatsapp_clone/Features/Theme/Custom_Theme.dart';
import 'package:whatsapp_clone/Screens/Auth%20Screens/Verification_Screen.dart';
import 'package:whatsapp_clone/Utils/CustomIconButton.dart';
import 'package:whatsapp_clone/Utils/Custombutton.dart';
import 'package:whatsapp_clone/Utils/CustomtextField.dart';
import 'package:whatsapp_clone/Utils/Show_Alert_Dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;

  @override
  void initState() {
    countryNameController = TextEditingController(text: 'Pakistan');
    countryCodeController = TextEditingController(text: '92');
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    countryNameController.dispose();
    countryCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  sendCodeToPhone() {
    final phoneNumber = phoneNumberController.text;
    final countryName = countryNameController.text;
    final countryCode = countryCodeController.text;

    if (phoneNumber.isEmpty) {
      return showAlertDialog(
        context: context,
        message: "Please enter your phone number",
      );
    } else if (phoneNumber.length < 9) {
      return showAlertDialog(
        context: context,
        message:
            'The phone number you entered is too short for the country: $countryName\n\nInclude your area code if you haven\'t',
      );
    } else if (phoneNumber.length > 10) {
      return showAlertDialog(
        context: context,
        message:
            "The phone number you entered is too long for the country: $countryName",
      );
    }

    ref.read(authControllerProvider).sendSmsCode(
          context: context,
          phoneNumber: "+$countryCode$phoneNumber",
        );
  }

  showCountryCodePicker() {
    showCountryPicker(
        context: context,
        showPhoneCode: true,
        favorite: ['ET'],
        countryListTheme: CountryListThemeData(
            bottomSheetHeight: 600.h,
            backgroundColor: Theme.of(context).backgroundColor,
            flagSize: 22.sp,
            borderRadius: BorderRadius.circular(22.r),
            textStyle: TextStyle(color: context.Ctheme.greyColor),
            inputDecoration: InputDecoration(
                labelStyle: TextStyle(color: context.Ctheme.greyColor),
                prefix: Icon(
                  Icons.language,
                  color: ConstColor.logoColor2,
                ),
                hintText: 'Search Country Code or name',
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: context.Ctheme.greyColor!.withOpacity(0.2))),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ConstColor.logoColor2)))),
        onSelect: (country) {
          countryNameController.text = country.name;
          countryCodeController.text = country.phoneCode;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          title: "Enter your Phone Number"
              .text
              .size(20.sp)
              .color(context.Ctheme.AuthAppbarTextC)
              .make(),
          centerTitle: true,
          actions: [
            CustomIconButton(
              onTap: () {},
              icon: Icons.more_vert,
            ),
          ],
        ),
        /////////////////////////////////////////////
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
                child: RichText(
                    textAlign: TextAlign.center,
                    softWrap: true,
                    text: TextSpan(
                        text: "Whatsapp will need to verify your phone number.",
                        style: TextStyle(
                            color: context.Ctheme.greyColor, height: 1.5.h),
                        children: [
                          TextSpan(
                              text: "What's my number?",
                              style: TextStyle(
                                  color: context.Ctheme.circleImageColor))
                        ])),
              ),
              10.h.heightBox,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.h),
                child: CustomizedTextfield(
                  onTap: () {
                    showCountryCodePicker();
                  },
                  myController: countryNameController,
                  readOnly: true,
                  suffixIocn: Icon(
                    Icons.arrow_drop_down,
                    color: ConstColor.logoColor2,
                  ),
                ),
              ),
              10.h.heightBox,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.h),
                child: Row(
                  children: [
                    SizedBox(
                      width: 70.w,
                      child: CustomizedTextfield(
                        onTap: () {
                          showCountryCodePicker();
                        },
                        myController: countryCodeController,
                        prefixText: '+',
                        readOnly: true,
                      ),
                    ),
                    10.w.widthBox,
                    Expanded(
                        child: CustomizedTextfield(
                      myController: phoneNumberController,
                      hintText: "Phone Number",
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.number,
                    ))
                  ],
                ),
              ),
              20.h.heightBox,
              Text(
                'Carrier charges my apply',
                style: TextStyle(color: context.Ctheme.greyColor),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomButton(
          onPressed: () {
            sendCodeToPhone();
            // Get.to(() => VerificationScreen());
          },
          text: 'NEXT',
          buttonWidth: 100.w,
        ));
  }
}
