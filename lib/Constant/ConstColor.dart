import 'dart:ui';

class ConstColor {
  static Color logoColor1 = hexToColor("#b3b0ff");
  static Color logoColor2 = hexToColor("#6563ff");

  static Color bgColor = hexToColor("#111B21");
  static Color bgLightColor = hexToColor("#FFFFFF");

  static Color greyDark = Color(0xff8696A0);
  static Color greyLight = Color(0xff667781);

  static Color blueDark = Color(0xff53bdeb);
  static Color blueLight = Color(0xff027EB5);

  static Color greyBackground = Color(0xff202c33);

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
