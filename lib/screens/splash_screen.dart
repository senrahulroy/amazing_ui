import 'dart:async';

import 'package:amazing_ui/screens/welcome_screen.dart';
import 'package:amazing_ui/screens/widgets/text_button.dart';
import 'package:flutter/material.dart';

import '../uttils/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(context, RoutsName.welcome
          //'/WelcomScreen'
          // MaterialPageRoute(
          //   builder: (context) => const WelcomeScreen(),
          // ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: const Center(
            child: CustomeText(
          text: 'Welcome',
        )),
      ),
    );
  }
}
