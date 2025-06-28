import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UpdateData extends StatefulWidget {
  const UpdateData({super.key});

  @override
  State<UpdateData> createState() => _UpdateDataState();
}

class _UpdateDataState extends State<UpdateData> {
  Future updateUserData(String id) async {
    try {
      String url = "http://localhost:3000/users/${id}";
      final response = await http.put(
        Uri.parse(url),
        body: jsonEncode({
          "username": "ayesha",
          "surname": "pathan",
          "age": "14",
          "school": "city school",
        }),
      );

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            action: SnackBarAction(
              label: 'ok',
              onPressed: () {
                // Code to execute.
              },
            ),

            content: Text("User Data upload successfully"),
            duration: const Duration(milliseconds: 10000),
            width: 280.0,
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0, // Inner padding for SnackBar content.
            ),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        );
        print("The user data ${response.body}");
      }
    } catch (e) {
      print("THE ERROR : ${e.toString()}");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUserData("5843");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column());
  }
}
