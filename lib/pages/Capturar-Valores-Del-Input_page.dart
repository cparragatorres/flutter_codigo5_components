import 'package:flutter/material.dart';

class CapturarValoresDelInputPage extends StatefulWidget {
  @override
  State<CapturarValoresDelInputPage> createState() =>
      _CapturarValoresDelInputPageState();
}

class _CapturarValoresDelInputPageState
    extends State<CapturarValoresDelInputPage> {
  String name1 = "";
  //para usar controladores se usa variables privadas
  final TextEditingController _nameController = TextEditingController(text: "Texto cualquiera inicial que puedes editar");

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
              //1er caso - OnChanged: Capturador de valor
              TextField(
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  label: Text(
                    "Ingresa tu nombre",
                  ),
                ),
                onChanged: (String value) {
                  name1 = value;
                  //este name1 actualiza lo que se escribe caracter por caracter
                },
                //El onTap es cuando haces click para escribir
                onTap: () {
                  print("on TAP!!!");
                },
              ),
              ElevatedButton(
                onPressed: () {
                  print(name1);
                },
                child: const Text("Mostrar Valor!"),
              ),
              const SizedBox(
                height: 30.0,
              ),
              //
              //
              //2DO CASO - USO DE CONTROLADOR PARA CAPTURAR LOS INPUTS
              TextField(
                controller: _nameController,
                // keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  label: Text(
                    "Ingresa tu nombre",
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  getNameData();
                  // _nameController.text="Ramón"; //En este caso se está asignando Ramón a la variable privada
                  setState(() {});
                },
                child: const Text("Mostrar Valor!"),
              ),
              const SizedBox(height: 30.0,),
              const Text("TIPOS DE CONFIGURACIÓN DE TECLADO", textAlign: TextAlign.center,),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text(
                    "teclado de numeros"
                  ),
                ),
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text(
                    "teclado para correos"
                  ),
                ),
              ),
              const TextField(
                keyboardType: TextInputType.url,
                decoration: InputDecoration(
                  label: Text(
                    "teclado para URLs"
                  ),
                ),
              ),
              const TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  label: Text(
                      "teclado para Multilineas"
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getNameData() {
    print(_nameController.text);
  }
}
