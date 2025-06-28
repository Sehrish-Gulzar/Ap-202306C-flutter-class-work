import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SendData extends StatefulWidget {
  const SendData({super.key});

  @override
  State<SendData> createState() => _SendDataState();
}

class _SendDataState extends State<SendData> {
  Future sendUserData() async {
    try {
      String url = "http://localhost:3000/users";
      final response = await http.post(
        Uri.parse(url),
        body: jsonEncode({
          "username": "khan",
          "surname": "khan khan",
          "age": "20",
          "school": "city school",
        }),
      );

      if (response.statusCode == 200) {
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
    sendUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column());
  }
}
