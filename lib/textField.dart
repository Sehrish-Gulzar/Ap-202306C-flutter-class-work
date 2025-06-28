import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  // labelText: "Enter your email",
                  // labelStyle: TextStyle(
                  //   color: Colors.cyan,
                  // ),
                  helperText: "example@gmail.com",
                  hintText: "Enter your email",
                  hintStyle: TextStyle(
                    color: Colors.cyan,
                  ),
                  focusColor: Colors.yellow,
                  filled: true,
                  fillColor: Colors.yellow,
                  prefixIcon: Icon(Icons.email),
                  prefixIconColor: Colors.red,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.amber, width: 4),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: TextField(
                controller: passController,
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                  // labelText: "Enter your email",
                  // labelStyle: TextStyle(
                  //   color: Colors.cyan,
                  // ),
                  helperText: "1234567",
                  hintText: "Enter your password",
                  hintStyle: TextStyle(
                    color: Colors.cyan,
                  ),
                  focusColor: Colors.yellow,
                  filled: true,
                  fillColor: Colors.yellow,
                  prefixIcon: Icon(Icons.password),
                  prefixIconColor: Colors.red,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.amber, width: 4),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            // Text(emailController.text),
            // Text(passController.text),
          ],
        ),
      ),
    );
  }
}
