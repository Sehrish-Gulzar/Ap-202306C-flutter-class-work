import 'package:flutter/material.dart';

class MySwitchButton extends StatefulWidget {
  const MySwitchButton({super.key});

  @override
  State<MySwitchButton> createState() => _MySwitchButtonState();
}

class _MySwitchButtonState extends State<MySwitchButton> {
  bool isSwitched = false;
  Color bg = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SwitchListTile(
                title: Text(
                  "Select Theme",
                  style: TextStyle(
                      color:
                          (bg == Colors.black) ? Colors.white : Colors.black),
                ),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    bg = (bg == Colors.black) ? Colors.white : Colors.black;
                  });
                }),
          )
        ],
      ),
    );
  }
}
