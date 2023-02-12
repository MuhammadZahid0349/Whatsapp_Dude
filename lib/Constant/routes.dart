import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Features/Welcome/pages/welcome.dart';
import 'package:whatsapp_clone/Screens/Auth%20Screens/Login_Screen.dart';
import 'package:whatsapp_clone/Screens/Auth%20Screens/User_Info_Screen.dart';
import 'package:whatsapp_clone/Screens/Auth%20Screens/Verification_Screen.dart';

class Routes {
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String verification = 'verification';
  static const String userInfo = 'user-info';
  static const String home = 'home';
  static const String contact = 'contact';
  static const String chat = 'chat';
  static const String profile = 'profile';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        );
      case login:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case verification:
        final Map args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => VerificationScreen(
            verificationId: args['verififcationId'],
            phoneNumber: args['phoneNumber'],
          ),
        );
      case userInfo:
        final String? profileImageUrl = settings.arguments as String?;
        return MaterialPageRoute(
          builder: (context) => UserInfoScreen(
              // profileImageUrl: profileImageUrl,
              ),
        );
      // case home:
      //   return MaterialPageRoute(
      //     builder: (context) => const HomePage(),
      //   );
      // case contact:
      //   return MaterialPageRoute(
      //     builder: (context) => const ContactPage(),
      //   );
      // case chat:
      //   final UserModel user = settings.arguments as UserModel;
      //   return MaterialPageRoute(
      //     builder: (context) => ChatPage(user: user),
      //   );
      // case profile:
      //   final UserModel user = settings.arguments as UserModel;
      //   return PageTransition(
      //     child: ProfilePage(user: user),
      //     type: PageTransitionType.fade,
      //     duration: const Duration(milliseconds: 800),
      //   );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text('No Page Route Provided'),
              ),
            );
          },
        );
    }
  }
}
