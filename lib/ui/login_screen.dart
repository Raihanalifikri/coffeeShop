import 'dart:developer';

import 'package:coffee_app/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? username;
  String? password;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool isSignIn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.coffee_maker_rounded,
                size: 130,
                color: Colors.blueGrey,
              ),
              Text(
                "XV_COFFEE",
                style: GoogleFonts.dangrek(
                  fontSize: 37,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        labelText: 'username',
                        labelStyle: GoogleFonts.nerkoOne(
                          color: Colors.white,
                          fontSize: 29,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      style: GoogleFonts.playpenSans(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      enableSuggestions: false,
                      autocorrect: false,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: GoogleFonts.nerkoOne(
                          color: Colors.white,
                          fontSize: 29,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      style: GoogleFonts.playpenSans(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 375,
                          child: ElevatedButton(
                            onPressed: () {
                              if (usernameController.text.isEmpty ||
                                  passwordController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Isi dulu Akang"),
                                  ),
                                );
                              } else if (passwordController.text.length < 8) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Password Kurang dari 8"),
                                  ),
                                );
                              } else {
                                isSignIn = true;
          
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainScreen(
                                        username: usernameController.text,
                                        password: passwordController.text,
                                      ),
                                    ),
                                    (route) => false);
                              }
                            },
                            child: Text(
                              "LOGIN",
                              style: GoogleFonts.abel(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            style: ButtonStyle(
                              elevation: WidgetStateProperty.all(8),
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.cyanAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, "/signup", (route) => false);
                          },
                          child: Row(
                            children: [
                              Text(
                                "SIGN UP",
                                style: GoogleFonts.abel(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.cyan,
                              )
                            ],
                          ),
                          style: ButtonStyle(
                            elevation: WidgetStateProperty.all(8),
                            backgroundColor:
                                WidgetStateProperty.all(Colors.cyanAccent),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
