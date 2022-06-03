import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isInvisible = true;
  String name = "";
  TextEditingController _nameController =
      TextEditingController(text: "Ramón Juan");

  TextEditingController _dateTimeController = TextEditingController();

  List<String> superheroes = [
    "Superman",
    "Wonder Woman",
    "Batman",
    "Aquaman",
  ];

  String valueAux = "Superman";

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
              TextField(
                maxLines: 1,
                textAlign: TextAlign.start,
                maxLength: 20,
                cursorColor: Colors.deepPurpleAccent,
                style: const TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  label: Text("correo electrónico"),
                  hintText: "example@gmail.com",
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.35),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                  icon: Icon(Icons.email),
                  prefixIcon: Icon(Icons.alternate_email),
                  suffixIcon:
                      Icon(Icons.email_outlined, color: Colors.purpleAccent),
                ),
                onChanged: (String value) {
                  print(value);
                },
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Buscar producto",
                    prefixIcon: Icon(Icons.search),
                    enabled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.redAccent,
                        width: 4.0,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellowAccent,
                        width: 4.0,
                      ),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 4.0,
                      ),
                    )),
              ),
              const SizedBox(height: 30.0),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mail),
                  prefixIcon: Icon(Icons.check_circle_outline_outlined),
                  label: const Text("Buscar"),
                  hintText: "Ingresa el producto a buscar...",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: Colors.deepPurpleAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: Colors.deepPurpleAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                        blurRadius: 12,
                        offset: const Offset(4, 4)),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Buscar producto...",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: Colors.black.withOpacity(0.37),
                    ),
                    suffixIcon: Container(
                      margin: EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.pink.withOpacity(0.4),
                            offset: const Offset(4, 4),
                            blurRadius: 7.0,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              TextField(
                obscureText: isInvisible,
                decoration: InputDecoration(
                  hintText: "ingrese su contraseña",
                  suffixIcon: IconButton(
                    icon: isInvisible
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                    onPressed: () {
                      isInvisible = !isInvisible;
                      setState(() {});
                    },
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              TextField(
                controller: _nameController,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  label: Text(
                    "Ingresa tu nombre",
                  ),
                ),
                // onChanged: (String value) {
                //   name = value;
                // },
                // onTap: () {
                //   print("on TAP!!!");
                // },
              ),
              ElevatedButton(
                onPressed: () {
                  getNameData();
                  // _nameController.text="Ramón";
                  setState(() {});
                },
                child: const Text("Mostrar Valor!"),
              ),
              const SizedBox(height: 30.0),
              TextField(
                controller: _dateTimeController,
                toolbarOptions: ToolbarOptions(
                  copy: false,
                  cut: false,
                  paste: false,
                  selectAll: false,
                ),
                readOnly: true,
                decoration: InputDecoration(
                  hintText: "Fecha de nacimiento",
                  suffixIcon: Icon(Icons.date_range),
                ),
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  selectDate();
                },
              ),
              const SizedBox(height: 30.0),
              DropdownButton(
                value: valueAux,
                items: superheroes.map((e) => DropdownMenuItem(child: Text(e), value: e,)).toList(),
                onChanged: (String? value){
                  valueAux = value!;
                  setState((){});
                },
              ),
              const SizedBox(height: 100.0),
            ],
          ),
        ),
      ),
    );
  }

  void getNameData() {
    print(_nameController.text);
  }

  selectDate() async {
    DateTime? dateSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (dateSelected != null) {
      _dateTimeController.text = dateSelected.toString().substring(0, 10);
      setState(() {});
    }
  }
  List<DropdownMenuItem<String>> getDataSuperheroe(){
    List<DropdownMenuItem<String>> items = [];
    superheroes.forEach((element) {
      items.add(
        DropdownMenuItem(
          child: Text(element),
          value: element,
        ),
      );
    });
    return items;
  }



}
