import 'package:flutter/material.dart';

import 'home_page.dart';
import 'list1_page.dart';
import 'list2_page.dart';
import 'list3_page.dart';

class ListPage extends StatefulWidget {

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("ListPage"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ItemComponentWidget(
            title: "List1",
            toPage: List1Page(),
          ),
          ItemComponentWidget(
            title: "List2",
            toPage: List2Page(),
          ),
          ItemComponentWidget(
            title: "List3",
            toPage: List3Page(),
          ),
        ],
      ),

    );
  }
}
