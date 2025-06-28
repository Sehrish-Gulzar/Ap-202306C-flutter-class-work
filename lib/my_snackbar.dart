import 'package:flutter/material.dart';

class MySnackbar extends StatefulWidget {
  const MySnackbar({super.key});

  @override
  State<MySnackbar> createState() => _MySnackbarState();
}

class _MySnackbarState extends State<MySnackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
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
                },
                child: Text("Show Snack Bar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
