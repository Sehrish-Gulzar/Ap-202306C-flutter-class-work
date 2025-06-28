import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/pics (1).jpg"),
              ),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  // Navigator.push(context, MaterialPageRoute(builder: (context){return Gallery();}));

                  Navigator.pop(context);
                });
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  // Navigator.push(context, MaterialPageRoute(builder: (context){return Gallery();}));

                  Navigator.pop(context);
                });
              },
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  // Navigator.push(context, MaterialPageRoute(builder: (context){return Gallery();}));

                  Navigator.pop(context);
                });
              },
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("GO TO"),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Drawer",
        ),
      ),
      body: Container(),
    );
  }
}
