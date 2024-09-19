import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coffee_app/main_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final firstname = TextEditingController();
  final lastname = TextEditingController();

  bool isSignIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.coffee_maker_rounded,
              size: 130,
              color: Colors.blueGrey,
            ),
            Text(
              "Make Your Account",
              style: GoogleFonts.dangrek(
                fontSize: 30,
                color: Colors.white
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
                        fontSize: 25,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    style: GoogleFonts.playpenSans(
                      fontSize: 18,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
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
                        fontSize: 25,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    style: GoogleFonts.playpenSans(
                      fontSize: 18,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          controller: firstname,
                          decoration: InputDecoration(
                            labelText: 'Firtsname',
                            labelStyle: GoogleFonts.nerkoOne(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          style: GoogleFonts.playpenSans(
                            fontSize: 18,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          controller: lastname,
                          decoration: InputDecoration(
                            labelText: 'Lastname',
                            labelStyle: GoogleFonts.nerkoOne(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          style: GoogleFonts.playpenSans(
                            fontSize: 18,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
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
                      Container(
                        width: 375,
                        child: ElevatedButton(
                          onPressed: () {
                            if (usernameController.text.isEmpty ||
                                passwordController.text.isEmpty ||
                                firstname.text.isEmpty ||
                                lastname.text.isEmpty) {
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
                                      firstname: firstname.text,
                                      lastname: lastname.text,
                                    ),
                                  ),
                                  (route) => false);
                            }
                          },
                          child: Text(
                            "SIGNUP",
                            style: GoogleFonts.abel(fontWeight: FontWeight.bold, fontSize: 20),
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
                              context, "/login", (route) => false);
                        },
                        child: Text(
                          "LOGIN",
                          style: GoogleFonts.abel(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        style: ButtonStyle(
                          elevation: WidgetStateProperty.all(8),
                          backgroundColor:
                              WidgetStateProperty.all(Colors.cyanAccent),
                        ),
                      ),
                    ],
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
