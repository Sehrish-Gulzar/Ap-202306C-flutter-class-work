import 'package:flutter/material.dart';

class Appbar_Text extends StatelessWidget {
  const Appbar_Text({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.home),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 20), child: Icon(Icons.menu)),
          Icon(Icons.agriculture_rounded)
        ],
        elevation: 10,
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text(
          "My Appbar Title",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Text(
                "Hello World",
                style: TextStyle(
                  letterSpacing: 10, wordSpacing: 90,
                  fontSize: 30,
                  color: Colors.pink,
                  // backgroundColor: Colors.cyan,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                  shadows: [
                    Shadow(color: Colors.black, blurRadius: 10),
                    Shadow(color: Colors.green, blurRadius: 20),
                    Shadow(color: Colors.yellow, blurRadius: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
