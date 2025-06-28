import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage(
      {super.key,
      required this.email,
      required this.password,
      required this.username});

  final String email;
  final String username;
  final String password;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.email),
          Text(widget.username),
          Text(widget.password),
        ],
      ),
    );
  }
}
