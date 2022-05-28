import 'package:flutter/material.dart';

class Practice1Page extends StatelessWidget {
  const Practice1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 260.0,
              alignment: Alignment.center,
              child: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.search_rounded,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 4.0, horizontal: 3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xff71A1FC),
                    ),
                    child:
                    Icon(
                      Icons.wifi,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Connection",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.72),
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        "Wi-Fi • Bluetooth • Flight mode",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.30),
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.white,
              ),
              child:
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                        EdgeInsets.symmetric(vertical: 4.0, horizontal: 3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xff8782F0),
                        ),
                        child:
                        Icon(
                          Icons.volume_up,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sounds and vibration",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.72),
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            "Sounds mode • Ringtone",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.30),
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Divider(
                    indent: 50.0,
                    thickness: 1.0,
                    color: Color(0xfff1f1f1),
                  ),
                  SizedBox(height: 6.0,),
                  Row(
                    children: [
                      Container(
                        padding:
                        EdgeInsets.symmetric(vertical: 4.0, horizontal: 3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffD57C6F),
                        ),
                        child:
                        Icon(
                          Icons.notifications_active,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sounds and vibration",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.72),
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            "Sounds mode • Ringtone",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.30),
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      )
                    ],

                  ),
                ],
              ),

            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.white,
              ),
              child:
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                        EdgeInsets.symmetric(vertical: 4.0, horizontal: 3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffB1D34A),
                        ),
                        child:
                        Icon(
                          Icons.sunny,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Display",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.72),
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            "Brightness • Eye comfort shield • Navigation bar",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.30),
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      )

                    ],

                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Divider(
                    indent: 50.0,
                    thickness: 1.0,
                    color: Color(0xfff1f1f1),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
