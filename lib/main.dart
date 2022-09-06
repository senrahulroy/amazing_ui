// import 'package:amazing_ui/screens/login_screen.dart';
// import 'package:amazing_ui/screens/splash_screen.dart';
// import 'package:amazing_ui/screens/welcome_screen.dart';
import 'package:amazing_ui/uttils/routes.dart';
import 'package:amazing_ui/uttils/routes_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazing_UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutsName.splash,
      onGenerateRoute: AppRoutes.generateRoute,
      // home: const SplashScreen()
    );
  }
}
