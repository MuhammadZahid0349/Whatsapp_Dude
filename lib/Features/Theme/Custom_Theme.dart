import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Constant/ConstColor.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get Ctheme =>
      Theme.of(this).extension<CustomThemeExtension>()!;
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static final lightMode = CustomThemeExtension(
      circleImageColor: ConstColor.logoColor2,
      greyColor: ConstColor.greyLight,
      blueColor: ConstColor.blueLight,
      langBtnColor: Color(0xfff7f8fa),
      AuthAppbarTextC: ConstColor.logoColor2,
      photoIconBgColor: Color(0xfff0f2f3),
      photoIconColor: Color(0xff9DAAB3),
      langBtnHighLightColor: Color(0xffe8e8ed));

  static final darkMode = CustomThemeExtension(
      circleImageColor: ConstColor.logoColor1,
      greyColor: ConstColor.greyDark,
      blueColor: ConstColor.blueDark,
      photoIconBgColor: Color(0xff283339),
      photoIconColor: Color(0xff61717b),
      langBtnColor: Color(0xff182229),
      AuthAppbarTextC: Color(0xffe9edef),
      langBtnHighLightColor: Color(0xff09141A));

  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnColor;
  final Color? langBtnHighLightColor;
  final Color? AuthAppbarTextC;
  final Color? photoIconBgColor;
  final Color? photoIconColor;

  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBtnColor,
    this.AuthAppbarTextC,
    this.langBtnHighLightColor,
    this.photoIconBgColor,
    this.photoIconColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnColor,
    Color? langBtnHighLightColor,
    Color? AuthAppbarTextC,
    Color? photoIconBgColor,
    Color? photoIconColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      AuthAppbarTextC: AuthAppbarTextC ?? this.AuthAppbarTextC,
      photoIconBgColor: photoIconBgColor ?? this.photoIconBgColor,
      photoIconColor: photoIconColor ?? this.photoIconColor,
      langBtnColor: langBtnColor ?? this.langBtnColor,
      langBtnHighLightColor:
          langBtnHighLightColor ?? this.langBtnHighLightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      photoIconBgColor: Color.lerp(photoIconBgColor, other.photoIconBgColor, t),
      photoIconColor: Color.lerp(photoIconColor, other.photoIconColor, t),
      AuthAppbarTextC: Color.lerp(AuthAppbarTextC, other.AuthAppbarTextC, t),
      langBtnColor: Color.lerp(langBtnColor, other.langBtnColor, t),
      langBtnHighLightColor:
          Color.lerp(langBtnHighLightColor, other.langBtnHighLightColor, t),
    );
  }
}
