import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen(
      {super.key, this.username, this.password, this.firstname, this.lastname});

  final String? username;
  final String? password;
  final String? firstname;
  final String? lastname;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person_search_outlined,
              size: 130,
              color: Colors.indigoAccent,
            ),
            Text(
              "Welcome Back ${widget.username}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Your Password ${widget.password}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showMaterialBanner(
                    MaterialBanner(
                    padding: const EdgeInsets.all(20.0),
                    content: Text("${widget.firstname} ${widget.lastname}"),
                    leading: Icon(Icons.handshake),
                    backgroundColor: Colors.white70,
                    elevation: 5,
                    actions: <Widget>[
                      TextButton(onPressed: (){
                        ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                      }, child: Text("Dissmiiss")
                      ),
                    ]
                    ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, elevation: 8),
              child: Text(
                "Clikk Mee!",
                style: GoogleFonts.abel(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
