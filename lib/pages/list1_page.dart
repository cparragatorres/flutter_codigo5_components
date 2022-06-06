import 'package:flutter/material.dart';

class List1Page extends StatefulWidget {

  @override
  State<List1Page> createState() => _List1PageState();
}

class _List1PageState extends State<List1Page> {
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
        backgroundColor: Colors.redAccent,
        title: Text("List 1"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: superheroes.length,
          itemBuilder: (BuildContext context, int indice1){
            print(indice1);
            return ListTile(
              title: Text(superheroes[indice1]),
              subtitle: const Text("Nombre"),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: (){
                  superheroes.removeAt(indice1);
                  setState((){

                  });
                },
              ),
            );
          }
      ),
    );
  }
}
