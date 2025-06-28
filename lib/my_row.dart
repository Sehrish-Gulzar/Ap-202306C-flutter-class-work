import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 100,
                  width: 100,
                  color: Colors.cyan,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 100,
                  width: 100,
                  color: Colors.pink,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 100,
                  width: 100,
                  color: Colors.cyan,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 100,
                  width: 100,
                  color: Colors.pink,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 100,
                  width: 100,
                  color: Colors.cyan,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 100,
                  width: 100,
                  color: Colors.pink,
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
