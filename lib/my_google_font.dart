import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyGoogleFont extends StatelessWidget {
  const MyGoogleFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Hello I am new google font",
              style: GoogleFonts.aboreto(
                  fontSize: 40,
                  color: Colors.red,
                  backgroundColor: Colors.black,
                  wordSpacing: 10,
                  letterSpacing: 2),
            ),
            Text(
              "Hello I am new google font",
              style: GoogleFonts.akronim(
                  fontSize: 40,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      color: Colors.orange,
                      blurRadius: 2,
                    )
                  ],
                  wordSpacing: 10,
                  letterSpacing: 2),
            ),
            Text(
              "Hello I am new google font",
              style: GoogleFonts.kantumruyPro(fontSize: 40),
            ),
            Text(
              "Hello I am new google font",
              style: GoogleFonts.alfaSlabOne(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
