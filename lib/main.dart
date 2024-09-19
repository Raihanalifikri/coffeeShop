import 'package:coffee_app/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/ui/login_screen.dart';
import 'package:coffee_app/ui/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/login": (context) => LoginScreen(),
        "/signup": (context) => SignupScreen(),
      },
    );
  }
}
