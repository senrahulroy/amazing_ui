import 'package:amazing_ui/screens/login_screen.dart';
import 'package:amazing_ui/screens/widgets/text_button.dart';
import 'package:amazing_ui/uttils/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingupScreen extends StatelessWidget {
  const SingupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const MySizedBox(height: 10, width: 0),
                  const CustomeText(text: 'Sing Up'),
                  const MySizedBox(height: 60, width: 0),
                  SvgPicture.asset(
                    "assets/images/login_view.svg",
                    height: 200,
                  ),
                  makeInput(lable: 'Full Name'),
                  const MySizedBox(height: 20, width: 0),
                  makeInput(lable: 'Email'),
                  const MySizedBox(height: 20, width: 0),
                  makeInput(lable: 'Password', obsecure: true),
                  const MySizedBox(height: 20, width: 0),
                  LargeButton(
                      text: 'Sign Up',
                      color: Colors.redAccent,
                      onPressed: () {}),
                  const MySizedBox(height: 20, width: 0),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, RoutsName.login);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account ? "),
                        const MySizedBox(height: 0, width: 5),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, RoutsName.login
                                // MaterialPageRoute(
                                //   builder: (context) => const LoginScreen(),
                                // )
                                );
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
