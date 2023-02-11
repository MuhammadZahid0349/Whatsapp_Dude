import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Constant/ConstColor.dart';
import 'package:whatsapp_clone/Features/Theme/Custom_Theme.dart';

class CustomizedTextfield extends StatelessWidget {
  final TextEditingController? myController;
  final String? hintText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final String? prefixText;
  final VoidCallback? onTap;
  final Widget? suffixIocn;
  final Function(String)? onChanged;
  final double? fontSize;
  final bool? autoFocus;

  const CustomizedTextfield(
      {Key? key,
      this.myController,
      this.hintText,
      this.readOnly,
      this.textAlign,
      this.keyboardType,
      this.prefixText,
      this.onTap,
      this.suffixIocn,
      this.onChanged,
      this.fontSize,
      this.autoFocus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      onTap: onTap,
      readOnly: readOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      keyboardType: readOnly == null ? keyboardType : null,
      onChanged: onChanged,
      style: TextStyle(fontSize: fontSize),
      autofocus: autoFocus ?? false,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please Fill this Filled';
        }
        return null;
      },
      decoration: InputDecoration(
        isDense: true,
        prefixText: prefixText,
        suffixIcon: suffixIocn,
        hintStyle: TextStyle(color: context.Ctheme.greyColor),

        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ConstColor.logoColor2),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ConstColor.logoColor2, width: 2),
        ),
        hintText: hintText,
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10),
        // ),
      ),
    );
  }
}
