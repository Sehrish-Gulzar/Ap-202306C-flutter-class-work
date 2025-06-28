import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchData2 extends StatefulWidget {
  const FetchData2({super.key});

  @override
  State<FetchData2> createState() => _FetchData2State();
}

class _FetchData2State extends State<FetchData2> {
  List users = [];
  Future fetchDataApi() async {
    try {
      String url = "http://localhost:3000/users";

      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        print(users.toString());
        return users = jsonDecode(response.body);
      }
    } catch (e) {
      print("The ERROR : ${e.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchDataApi(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("ERROR WHILE FETCHING DATA"));
          } else if (!snapshot.hasData) {
            return Center(child: Text("No DATA FOUND"));
          } else {
            final user = snapshot.data;
            return ListView.builder(
              itemCount: user.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(user[index]["age"].toString()),
                  title: Text(user[index]["username"]),
                  subtitle: Text(user[index]["surname"]),
                );
              },
            );
          }
        },
      ),
    );
  }
}
