import 'package:flutter/material.dart';

class resuableBN extends StatefulWidget {
  final int selectIndex;
  final Function(int index) myCallback;
  final double? selectedFont;
  final Color? bg;
  final List<BottomNavigationBarItem> btItems;
  const resuableBN({
    super.key,
    required this.selectIndex,
    required this.myCallback,
    required this.btItems,
    this.selectedFont = 15,
    this.bg = Colors.black,
  });

  @override
  State<resuableBN> createState() => _resuableBNState();
}

class _resuableBNState extends State<resuableBN> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: widget.bg,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: widget.selectedFont!,
      unselectedFontSize: 10,
      selectedItemColor: Colors.yellow,
      unselectedIconTheme: IconThemeData(size: 20, color: Colors.grey),
      selectedIconTheme: IconThemeData(color: Colors.green, size: 30),
      selectedLabelStyle: TextStyle(
          fontStyle: FontStyle.italic,
          shadows: [Shadow(color: Colors.deepOrangeAccent, blurRadius: 2)]),
      unselectedItemColor: Colors.white,
      elevation: 10,
      currentIndex: widget.selectIndex,
      onTap: widget.myCallback,
      items: widget.btItems,
      // items: [
      //   // BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //   // BottomNavigationBarItem(icon: Icon(Icons.image), label: "Gallery"),
      //   // BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
      //   // BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      // ],
    );
  }
}
