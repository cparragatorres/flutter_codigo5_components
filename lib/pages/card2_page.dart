import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardPage2 extends StatelessWidget {
  const CardPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //card 2.1
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24.0,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jhon Doe",
                            style: GoogleFonts.poppins(
                                color: Color(0xff404E83),
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0),
                          ),
                          Text(
                            "Ceo at Apple Inc",
                            style: GoogleFonts.poppins(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 10.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                    decoration: BoxDecoration(
                      color: Color(0xffDCE5FF),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          size: 16.0,
                          color: Color(0xff2C63FF),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Settings",
                          style: GoogleFonts.poppins(
                            color: Color(0xff2C63FF),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //card 2.2
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Color(0xffDCE5FF),
                      shape: BoxShape.circle,
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.flaskVial,
                      color: Color(0xff2C63FF),
                      size: 20.0,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The quick, brown fox jumps over",
                            style: GoogleFonts.poppins(
                              color: Color(0xff404E83),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor",
                            style: GoogleFonts.poppins(
                                color: Color(0xff404E83),
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //card 2.3
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Lorem ipsum dolor sit amet, consetetur",
                        ),
                        Row(
                          children: [
                            Text(
                              "On",
                              style: TextStyle(
                                color: Color(0xff0044FF),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  bottom: 5.0,
                                  right: 5.0,
                                  top: 5.0,
                                  left: 24.0),
                              decoration: BoxDecoration(
                                color: Color(0xff0044FF),
                              ),
                              child: Container(
                                height: 10.0,
                                width: 10.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Lorem ipsum dolor sit amet, consetetur",
                        ),
                        Row(
                          children: [
                            Text(
                              "Off",
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  bottom: 5.0,
                                  right: 24.0,
                                  top: 5.0,
                                  left: 5.0),
                              decoration: BoxDecoration(
                                color: Color(0xffD3D6E2),
                              ),
                              child: Container(
                                height: 10.0,
                                width: 10.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
