import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List title = ["Sehrish", "Ayesha", "Nimra", "Sir Faizan", "Danish", "Rida"];
  List images = [
    "assets/images/flower.jpg",
    "assets/images/pics (1).jpg",
    "assets/images/pics (2).jpg",
    "assets/images/pics (3).jpg",
    "assets/images/pics (4).jpg",
    "assets/images/pics (5).jpg"
  ];
  List subtitle = [
    "Hello Sehrish",
    "Hello Ayesha",
    "Hello Nimra",
    "Hello Sir Faizan",
    "Hello Danish",
    "Hello Rida"
  ];
  List time = ["12:00", "1:00", "2:00", "3:00", "4:00", "5:00"];

  List msg = ["2", "1", "3", "1", "6", "20"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("What's App"),
        centerTitle: true,
      ),
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.1,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 20,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CircleAvatar(
                    backgroundImage: AssetImage(images[index]),
                  );
                },
                itemCount: images.length,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.8,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Card(
                    shadowColor: Colors.white70,
                    child: ListTile(
                      title: Text(
                        title[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      subtitle: Text(
                        subtitle[index],
                        style: TextStyle(color: Colors.white70),
                      ),
                      tileColor: Colors.black,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(images[index]),
                      ),
                      trailing: Column(
                        children: [
                          Text(time[index],
                              style: TextStyle(color: Colors.white70)),
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.green,
                              ),
                              Text(msg[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: title.length,
            ),
          )
        ],
      ),
    );
  }
}
