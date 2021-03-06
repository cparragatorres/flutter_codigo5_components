import 'package:flutter/material.dart';
import 'package:flutter_codigo5_componets/pages/alert_page.dart';
import 'package:flutter_codigo5_componets/pages/avatar_page.dart';
import 'package:flutter_codigo5_componets/pages/card2_page.dart';
import 'package:flutter_codigo5_componets/pages/card_page.dart';
import 'package:flutter_codigo5_componets/pages/input_pages.dart';
import 'package:flutter_codigo5_componets/pages/list_page.dart';
import 'package:flutter_codigo5_componets/pages/reto_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'grid_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      offset: const Offset(4.0, 4.0),
                      blurRadius: 12.0,
                    ),
                  ],
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.oregano(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                width: 160.0,
                child:  Divider(
                  thickness: 0.45,
                ),
              ),
              ItemComponentWidget(
                title: "Avatar",
                toPage: AvatarPage(),
              ),
              ItemComponentWidget(
                title: "Alert",
                toPage: AlertPage(),
              ),
              ItemComponentWidget(
                title: "Cards",
                toPage: CardPage(),
              ),
              ItemComponentWidget(
                title: "Cards 2",
                toPage: CardPage2(),
              ),
              ItemComponentWidget(
                title: "Dr. Peterson",
                toPage: RetoPage(),
              ),
              ItemComponentWidget(
                title: "Inputs",
                toPage: InputPage(),
              ),
              ItemComponentWidget(
                title: "Lists",
                toPage: ListPage(),
              ),
              ItemComponentWidget(
                title: "Grid",
                toPage: GridPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  String title;
  Widget toPage;

  ItemComponentWidget({
  required this.title,
  required this.toPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: Offset(4, 4),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: ListTile(
        onTap:() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => toPage));
        },
        leading: Icon(
            Icons.check_circle_outline,
            color: Color(0xff4a5467),
        ),
        title: Text(title),
        subtitle: Text("Ir a detalle de $title",
        style: GoogleFonts.poppins(
          fontSize: 13.0,
          ),
        ),
        trailing: Icon(
          Icons.chevron_right,
        ),
      ),
    );
  }
}
