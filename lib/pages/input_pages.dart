import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InputPage"),
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
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  label: Text("correo electrónico"),
                  hintText: "example@gmail.com",
                  hintStyle: TextStyle(
                    color: Colors.pinkAccent.withOpacity(0.35),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
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
