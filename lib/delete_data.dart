import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeleteData extends StatefulWidget {
  const DeleteData({super.key});

  @override
  State<DeleteData> createState() => _DeleteDataState();
}

class _DeleteDataState extends State<DeleteData> {
  Future deleteData(String id) async {
    try {
      String url = "http://localhost:3000/users/${id}";
      final response = await http.put(Uri.parse(url));

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            action: SnackBarAction(
              label: 'ok',
              onPressed: () {
                // Code to execute.
              },
            ),

            content: Text("User Data delete successfully"),
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
    deleteData("5843");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column());
  }
}
