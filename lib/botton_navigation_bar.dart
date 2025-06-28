import 'package:flutter/material.dart';
import 'package:flutter_project/listview_builder.dart';
import 'package:flutter_project/widgets/custom_container.dart';

import 'form.dart';
import 'gallery.dart';
import 'widgets/resuable.dart';

class MyBottomNavihationBar extends StatefulWidget {
  const MyBottomNavihationBar({super.key});

  @override
  State<MyBottomNavihationBar> createState() => _MyBottomNavihationBarState();
}

class _MyBottomNavihationBarState extends State<MyBottomNavihationBar> {
  int selectIndex = 0;

  void changeIndex(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  List screens = [
    MyForm(),
    Gallery(),
    MyListView(),
    Column(
      children: [
        CustomConatainer(
          h: 200,
          w: 200,
          imgPath: "assets/images/flower.jpg",
          cc: Colors.black,
        ),
        CustomConatainer(
          h: 200,
          w: 200,
          imgPath: "assets/images/pics (1).jpg",
          cc: Colors.black,
        ),
        CustomConatainer(
          h: 200,
          w: 200,
          imgPath: "assets/images/pics (2).jpg",
          cc: Colors.black,
        ),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: resuableBN(
          bg: Colors.yellow,
          selectedFont: 20,
          selectIndex: selectIndex,
          myCallback: changeIndex,
          btItems: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.image), label: "Gallery"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
        body: screens[selectIndex]);
  }
}
