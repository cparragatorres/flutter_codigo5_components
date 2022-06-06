import 'package:flutter/material.dart';

class Grid1Page extends StatelessWidget {
  const Grid1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid 1"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        childAspectRatio: 1.70,
        children: [
          Container(
            color: Colors.red,
            child: Text("Hola 1"),
          ),
          Container(
            color: Colors.greenAccent,
            child: Text("Hola 3"),
          ),
          Container(
            color: Colors.blue,
            child: Text("Hola 4"),
          ),
          Container(
            color: Colors.purple,
            child: Text("Hola 5"),
          ),
        ],
      ),
    );
  }
}
