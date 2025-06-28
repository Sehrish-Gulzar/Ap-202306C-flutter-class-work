import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget {
  MyRadioButton({super.key});

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  String? selectOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadioListTile(
              activeColor: Colors.blue,
              subtitle: Text("Please select your gender"),
              tileColor: Colors.blue.withOpacity(0.2),
              title: Text("Male"),
              value: "Male",
              groupValue: selectOption,
              onChanged: (value) {
                setState(() {
                  selectOption = value;
                });
              }),
          SizedBox(
            height: 20,
          ),
          RadioListTile(
              tileColor: Colors.pink[100],
              activeColor: Colors.pink,
              title: Text("Female"),
              value: "Female",
              groupValue: selectOption,
              onChanged: (value) {
                setState(() {
                  selectOption = value;
                });
              }),
          Text(selectOption.toString()),
        ],
      ),
    );
  }
}
