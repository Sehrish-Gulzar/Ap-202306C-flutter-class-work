import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FormDataSentToJsonFile extends StatefulWidget {
  const FormDataSentToJsonFile({super.key});

  @override
  State<FormDataSentToJsonFile> createState() => _FormDataSentToJsonFileState();
}

class _FormDataSentToJsonFileState extends State<FormDataSentToJsonFile> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future uploadData() async {
    try {
      String url = "http://localhost:3000/users";

      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'username': usernameController.text,
          'surname': surnameController.text,
          'age': ageController.text,
          'school': schoolController.text,
        }),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        print("The user data ${response.body}");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("User Data uploaded successfully"),
            width: 280.0,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        );
        usernameController.clear();
        surnameController.clear();
        ageController.clear();
        schoolController.clear();
      } else {
        throw Exception("Failed to upload: ${response.statusCode}");
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Failed to send data: ${e.toString()}"),
          width: 280.0,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(hintText: "username"),
                      validator: (value) {
                        if (value == "" || value!.isEmpty) {
                          return "Username is required";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: surnameController,
                      decoration: InputDecoration(hintText: "surname"),
                      validator: (value) {
                        if (value == "" || value!.isEmpty) {
                          return "Surname is required";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: ageController,
                      decoration: InputDecoration(hintText: "age"),
                      validator: (value) {
                        if (value == "" || value!.isEmpty) {
                          return "Age is required";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: schoolController,
                      decoration: InputDecoration(hintText: "school"),
                      validator: (value) {
                        if (value == "" || value!.isEmpty) {
                          return "School is required";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                uploadData();
              }
            },
            child: Text("Sign up/ Send data"),
          ),
        ],
      ),
    );
  }
}
