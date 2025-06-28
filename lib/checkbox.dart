import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CheckboxListTile(
                activeColor: Colors.purple,
                checkColor: Colors.yellow,
                tileColor: Colors.pink.shade50,
                title: Text("Are you hungry"),
                subtitle: Text("select value"),
                value: isCheck,
                onChanged: (value) {
                  setState(() {
                    isCheck = value;
                  });
                }),
          )
        ],
      ),
    );
  }
}
