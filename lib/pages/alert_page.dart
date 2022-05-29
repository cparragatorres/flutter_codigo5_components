import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  void showMyAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Caregiver Review",
                style: GoogleFonts.poppins(
                  color: Color(0xff658bc9),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Color(0xff789bd6),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Icon(
                  Icons.person,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                "Amanda Johnson",
                style: GoogleFonts.poppins(
                  color: Color(0xff53658c),
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                ),
              ),
              Text(
                "Rate the care provider Sunday, Jan 9",
                style: GoogleFonts.poppins(
                  color: Color(0xff53658c),
                  fontWeight: FontWeight.w500,
                  fontSize: 10.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Color(0xffffbc6b)),
                  Icon(Icons.star, color: Color(0xffffbc6b)),
                  Icon(Icons.star, color: Color(0xffffbc6b)),
                  Icon(Icons.star, color: Color(0xffffbc6b)),
                  Icon(Icons.star, color: Color(0xffdfe4ed)),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                height: 50.0,
                width: double.infinity,
                color: Color(0xfff7f9fc),
                child: Text(
                  "Additional Comments...",
                  style: GoogleFonts.poppins(
                    color: Color(0xff949f89),
                    fontSize: 11.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Hot Now",
                      style: GoogleFonts.poppins(
                        color: Color(0xff5f7caf),
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                  MaterialButton(
                    color: Color(0xff6f8fc5),
                    child: Text(
                      "Submint Review",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // title: Text("My Alert Dialog"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Check_green_icon.svg/2048px-Check_green_icon.svg.png",
                height: 90.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Alert",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco",
                  style: GoogleFonts.poppins(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.5),
                  )),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext mandarina) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Alert Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //showMyAlert(mandarina);
                showMyAlert2(mandarina);
              },
              child: Text(
                "Show Alert",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
