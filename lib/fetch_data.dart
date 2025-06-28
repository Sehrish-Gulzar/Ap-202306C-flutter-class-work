import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchData extends StatefulWidget {
  const FetchData({super.key});

  @override
  State<FetchData> createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  List users = [];
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users'),
      );

      if (response.statusCode == 200) {
        setState(() {
          users = json.decode(response.body);
        });
      } else {
        setState(() {
          errorMessage =
              'Failed to load users. Status code: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'An error occurred: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User List')),
      body:
          errorMessage.isNotEmpty
              ? Center(child: Text(errorMessage))
              : users.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ListTile(
                    leading: Text(user['id'].toString()),
                    title: Text(user['name']),
                    subtitle: Text(user['email']),
                  );
                },
              ),
    );
  }
}
