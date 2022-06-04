import 'package:flutter/material.dart';

class PasswordInputPages extends StatefulWidget {
  @override
  State<PasswordInputPages> createState() => _PasswordInputPagesState();
}

class _PasswordInputPagesState extends State<PasswordInputPages> {
  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Password-InputPage"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
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
                      setState((){});
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
