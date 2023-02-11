import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:whatsapp_clone/Features/Theme/dark_theme.dart';
import 'package:whatsapp_clone/Features/Theme/light_theme.dart';
import 'package:whatsapp_clone/Features/Welcome/pages/welcome.dart';
import 'package:whatsapp_clone/Screens/Auth%20Screens/Login_Screen.dart';
import 'package:whatsapp_clone/Screens/Auth%20Screens/User_Info_Screen.dart';
import 'package:whatsapp_clone/Screens/Auth%20Screens/Verification_Screen.dart';

void main() {
//  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Whatsapp Dude',
            ////////////////////
            theme: lightTheme(),
            darkTheme: darkTheme(),
            themeMode: ThemeMode.system,
            ////////////////////////////
            builder: EasyLoading.init(),
            home: UserInfoScreen(),
          );
        });
  }
}
