import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

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
                style:
                const TextStyle(
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
                  suffixIcon: Icon(Icons.email_outlined,color: Colors.purpleAccent),
                ),
                onChanged: (String value){
                  print(value);
                },
              ),
              const SizedBox(height: 20.0),
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
                  )
                ),
              ),
              const SizedBox(height: 30.0),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.check_circle_outline),
                  label: Text("Buscar"),
                  hintText: "Ingresa el producto a buscar...",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.deepPurpleAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.deepPurpleAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
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
