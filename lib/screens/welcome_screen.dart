import 'package:amazing_ui/screens/login_screen.dart';
import 'package:amazing_ui/screens/signup_screen.dart';
import 'package:amazing_ui/screens/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../uttils/routes_name.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MySizedBox(height: 20, width: 0),
              const CustomeText(text: 'Welcome'),
              const MySizedBox(height: 20, width: 0),
              const Spacer(),
              const SmallText(
                text:
                    'Automatic Identity verification which enable you to verify your identity',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const Spacer(),
              SvgPicture.asset(
                "assets/images/devloper.svg",
                height: 300,
              ),
              const Spacer(),
              LargeButton(
                text: "Login",
                onPressed: () {
                  Navigator.pushNamed(context, RoutsName.login
                      // MaterialPageRoute(
                      //   builder: (builder) => const LoginScreen(),
                      // ),
                      );
                },
                color: Colors.blue,
              ),
              const MySizedBox(height: 20, width: 0),
              LargeButton(
                text: "Sign Up",
                color: Colors.redAccent,
                onPressed: () {
                  Navigator.pushNamed(context, RoutsName.signup
                      // MaterialPageRoute(
                      //   builder: (builder) => const SingupScreen(),
                      // ),
                      );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
