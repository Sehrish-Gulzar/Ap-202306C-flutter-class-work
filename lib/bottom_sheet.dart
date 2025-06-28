import 'package:flutter/material.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        elevation: 10,
                        // backgroundColor: Colors.purpleAccent.withOpacity(0.5),
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Form(
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                              hintStyle: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              filled: true,
                                              fillColor: Colors.red
                                                  .withOpacity(0.1),
                                              prefixIconColor: Colors.red,
                                              prefixIcon: Icon(Icons.person),
                                              hintText: "Enter your username",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              20)))),
                                          validator: (value) {
                                            if (value == "" || value!.isEmpty) {
                                              return "username is required";
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextFormField(
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor:
                                                Colors.purple.withOpacity(0.1),
                                            prefixIcon: Icon(Icons.email),
                                            prefixIconColor: Colors.purple,
                                            hintText: "Enter your email",
                                            hintStyle: TextStyle(
                                              color: Colors.purple,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            border: OutlineInputBorder(
                                              // gapPadding: 20,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(20),
                                              ),
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value == "" || value!.isEmpty) {
                                              return "email is required";
                                            } else if (!RegExp(
                                                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                                                .hasMatch(value)) {
                                              return "invalid email format";
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextFormField(
                                          obscureText: true,
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            suffixIcon: Icon(
                                                Icons.remove_red_eye_outlined),
                                            filled: true,
                                            fillColor:
                                                Colors.blue.withOpacity(0.1),
                                            prefixIconColor: Colors.blue,
                                            prefixIcon: Icon(Icons.password),
                                            hintText: "Enter your password",
                                            hintStyle: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(20),
                                              ),
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value == "" || value!.isEmpty) {
                                              return "password is required";
                                            }
                                            return null;
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Already have accocunt?"),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text("login"))
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        // padding: EdgeInsets.all(15),
                                        elevation: 10,
                                        backgroundColor: Colors.amberAccent),
                                    onPressed: () {
                                      setState(() {
                                        Navigator.pop(context);
                                      });
                                    },
                                    child: Text("SignUp"),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child: Text("Show BottomSheet")))
        ],
      ),
    );
  }
}
