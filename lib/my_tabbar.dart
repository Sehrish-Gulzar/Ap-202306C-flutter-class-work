import 'package:flutter/material.dart';

import 'form.dart';
import 'gallery.dart';
import 'listview_builder.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBar(
              bottom: TabBar(
                labelStyle: TextStyle(fontSize: 16),
                labelColor: Colors.white,
                // isScrollable: true,
                unselectedLabelColor: Colors.black,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple.withOpacity(0.8),
                      Colors.black.withOpacity(0.8)
                    ],
                  ),
                ),
                tabs: [
                  Tab(
                    child: Text(
                      "all",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Unread",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "profile",
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [Gallery(), MyListView(), MyForm()],
          )),
    );
  }
}
