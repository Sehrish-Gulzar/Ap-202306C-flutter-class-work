import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyStack(),
  ));
}

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                image: AssetImage("assets/images/flower.jpg"),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 50,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
