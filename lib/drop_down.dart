import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String initialValue = "Pakistan";
  List<String> country = ["Pakistan", "India", "Usa", "China", "japan"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: DropdownButton<String>(
                value: initialValue,
                items: country.map((value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    initialValue = newValue!;
                  });
                }),
          )
        ],
      ),
    );
  }
}
