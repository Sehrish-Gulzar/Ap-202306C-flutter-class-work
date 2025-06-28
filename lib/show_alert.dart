import 'package:flutter/material.dart';

class MyShowAlert extends StatefulWidget {
  const MyShowAlert({super.key});

  @override
  State<MyShowAlert> createState() => _MyShowAlertState();
}

class _MyShowAlertState extends State<MyShowAlert> {
  Color bg = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          scrollable: true,
                          backgroundColor: Colors.white70,
                          title: Center(child: Text("ARE YOU SURE")),
                          content: Text(
                              "Are you sure you really want to change color into black!"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    bg = Colors.black;
                                    Navigator.pop(context);
                                  });
                                },
                                child: Text("Yes")),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    bg = Colors.white;
                                    Navigator.pop(context);
                                  });
                                },
                                child: Text("No"))
                          ],
                        );
                      });
                },
                child: Text("Show Alert")),
          )
        ],
      ),
    );
  }
}
