import 'package:amazing_ui/screens/login_screen.dart';
import 'package:amazing_ui/screens/signup_screen.dart';
import 'package:amazing_ui/screens/splash_screen.dart';
import 'package:amazing_ui/screens/welcome_screen.dart';
import 'package:amazing_ui/uttils/routes_name.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutsName.welcome:
        return MaterialPageRoute(
            builder: (BuildContext context) => const WelcomeScreen());

      case RoutsName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());

      case RoutsName.signup:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SingupScreen());

      case RoutsName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('No routes available'),
                  ),
                ));
    }
  }
}

// if not routes availables then you can call this widget SWTICH case methode
class RountsNotAvaialbe extends StatelessWidget {
  const RountsNotAvaialbe({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('No routes available'),
        ),
      ),
    );
  }
}
