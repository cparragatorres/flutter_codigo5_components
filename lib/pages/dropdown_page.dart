import 'package:flutter/material.dart';

class DropdownPage extends StatefulWidget {
  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {

  String value1Aux = "A";

  List<String> superheroes = [
    "Superman",
    "Wonder Woman",
    "Batmaman",
    "Aquaman",
  ];

  String value2Aux = "Superman";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InputPage"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              //DROPDOWNBUTTON TEORICO
              DropdownButton(
                value: value1Aux,
                items: [
                  DropdownMenuItem(
                    value: "A",
                    child: Text(
                      "Hola"
                  ),
                  ),
                  DropdownMenuItem(
                    value: "B",
                    child: Text(
                      "Buenos Dias"
                  ),
                  ),
                  DropdownMenuItem(
                    value: "C",
                    child: Text(
                      "Buenas noches"
                  ),
                  ),
                ],
                onChanged: (String? value){
                  print(value);
                  value1Aux = value.toString();
                  setState((){});
                },
              ),
              SizedBox(height: 30.0),
              //DROPDOWNBUTTON CON LISTA
              DropdownButton(
                value: value2Aux,
                items: superheroes
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (String? value) {
                  value2Aux = value!;
                  setState(() {

                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> getDataSuperheroe() {
    List<DropdownMenuItem<String>> items = [];
    superheroes.forEach((element) {
      items.add(
        DropdownMenuItem(
          value: element,
          child: Text(element),
        ),
      );
    });
    return items;
  }
}
