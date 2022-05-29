import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Page"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Color(0xffECF0F3),
              borderRadius: BorderRadius.circular(24.0),
              // borderRadius: BorderRadius.only(
              //   topRight: Radius.circular(20.0),
              //   bottomLeft: Radius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffD1D9E6),
                  blurRadius: 30.0,
                  offset: const Offset(18.0, 18.0),
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 30.0,
                  offset: Offset(-18.0, -18.0),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.60),
                    fontSize: 14.0,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  const CardPage({Key? key}) : super(key: key);
}
