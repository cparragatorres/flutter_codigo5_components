import 'package:flutter/material.dart';
import 'package:flutter_codigo5_componets/pages/home_page.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_codigo5_componets/pages/practice1_page.dart';


void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Components App",
      home: HomePage(),
    );
  }
}
