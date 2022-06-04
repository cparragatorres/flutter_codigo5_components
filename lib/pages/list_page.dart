import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {

  List<String> superheroes =[
    "Superman",
    "Batman",
    "Wonder Woman",
    "Flash",
    "Aquaman"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("ListPage"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: superheroes.length,
          itemBuilder: (BuildContext context, int index){
            print(index);
            return Text(superheroes[index]);
          }
      ),
    );
  }
}
