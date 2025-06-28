import 'package:flutter/material.dart';
import 'package:flutter_project/homepage.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Color bg = Colors.black;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Text("SignUp Form"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  bg = (bg == Colors.white) ? Colors.black : Colors.white;
                });
              },
              child: Container(
                color: Colors.red.withOpacity(0.5),
                width: 200,
                height: 50,
                child: Text("Container Button"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: usernameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          filled: true,
                          fillColor: Colors.red.withOpacity(0.1),
                          prefixIconColor: Colors.red,
                          prefixIcon: Icon(Icons.person),
                          hintText: "Enter your username",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
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
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.purple.withOpacity(0.1),
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
                      controller: passController,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        filled: true,
                        fillColor: Colors.blue.withOpacity(0.1),
                        prefixIconColor: Colors.blue,
                        prefixIcon: Icon(Icons.password),
                        hintText: "Enter your password",
                        hintStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
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
                  TextButton(onPressed: () {}, child: Text("login"))
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
                    if (formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage(
                                  email: emailController.text,
                                  password: passController.text,
                                  username: usernameController.text)));
                    }
                  });
                },
                child: Text("SignUp"),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.ac_unit),
      ),
    );
  }
}
