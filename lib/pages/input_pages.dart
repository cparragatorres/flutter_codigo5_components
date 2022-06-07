import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_componets/pages/Capturar-Valores-Del-Input_page.dart';
import 'package:flutter_codigo5_componets/pages/calendar-input_page.dart';
import 'package:flutter_codigo5_componets/pages/dropdown_page.dart';
import 'package:flutter_codigo5_componets/pages/general_Inputs_page.dart';
import 'package:flutter_codigo5_componets/pages/home_page.dart';
import 'package:flutter_codigo5_componets/pages/list_page.dart';
import 'package:flutter_codigo5_componets/pages/password_Inputs_pages.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  TextEditingController _dateTimeController = TextEditingController();



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
              ItemComponentWidget(
                title: "General-Inputs",
                toPage: GeneralInputsPage(),
              ),
              ItemComponentWidget(
                title: "Password-Inputs",
                toPage: PasswordInputPages(),
              ),
              ItemComponentWidget(
                title: "CapturarValoresDelInput",
                toPage: CapturarValoresDelInputPage(),
              ),
              ItemComponentWidget(
                title: "CalendarInput",
                toPage: CalendarInputPage(),
              ),
              ItemComponentWidget(
                title: "ListaDesplegable",
                toPage: DropdownPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
