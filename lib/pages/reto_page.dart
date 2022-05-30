import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RetoPage extends StatelessWidget {
  const RetoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD8DFF6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
            decoration: BoxDecoration(
              color: Color(0xffF3F6FF),
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffD1D9E6),
                  blurRadius: 30.0,
                  offset: const Offset(18.0, 18.0),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.drag_handle,
                      color: Color(0xff71788A),
                    ),
                    Icon(
                      Icons.calendar_today_outlined,
                      color: Color(0xff71788A),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff97A3C9).withOpacity(0.5),
                  ),
                ),
                SizedBox(
                  height: 14.0,
                ),
                Text(
                  "Dr. Peterson",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C3550),
                  ),
                ),
                SizedBox(
                  height: 28.0,
                ),
                Container(
                  height: 80.0,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                          decoration: BoxDecoration(
                            color: Color(0xff4483FF),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(24.0),
                              topLeft: Radius.circular(24.0),
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Appointment Request",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    ":",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.access_time_filled_rounded,
                                    color: Colors.white,
                                    size: 18.0,
                                  ),
                                  Text(
                                    "  12 Jan 2020, 8am - 10am",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
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
                Container(
                  height: 150.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff2C3550),
                        spreadRadius: -18.0,
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(24.0),
                              bottomLeft: Radius.circular(24.0),
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          child: Image.network(
                                            "https://images.pexels.com/photos/634021/pexels-photo-634021.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                            height: 50.0,
                                            width: 50.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 16.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Louis",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff2C3550),
                                            ),
                                          ),
                                          SizedBox(height: 5.0),
                                          Text(
                                            "Patterson",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff2C3550),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 30.0,
                                    width: 30.0,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color(0xffE1E6F8),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Container(
                                      height: 24.0,
                                      width: 24.0,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      child: Text(
                                        "i",
                                        style: GoogleFonts.katibeh(
                                          color: Color(0xff4483FF),
                                          fontSize: 28.0,
                                          fontStyle: FontStyle.italic,
                                          height: 1.3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      color: Color(0xff256FFF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      child: Text(
                                        "ACCEPT",
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13.0,
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  MaterialButton(
                                    color: Color(0xffEBEFFA),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Text(
                                      "DECLINE",
                                      style: GoogleFonts.poppins(
                                        color: Color(0xff97A3C9),
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
                        ),
                      ),
                    ],
                  ),
                ),
                //NEXT APPOINTMENTS
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Next appoiments",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff97A3C9),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                AppoimentsWidget(
                  imagen: NetworkImage(
                    "https://images.pexels.com/photos/11612904/pexels-photo-11612904.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                  ),
                  namePerson: "Dorothy Nelson",
                  appoiment: "09 Jan 2020, 8am - 10am",
                ),
                SizedBox(height: 10.0),
                AppoimentsWidget(
                  imagen: NetworkImage(
                    "https://images.pexels.com/photos/11612904/pexels-photo-11612904.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                  ),
                  namePerson: "Dorothy Nelson",
                  appoiment: "09 Jan 2020, 8am - 10am",
                ),
                SizedBox(height: 10.0),
                AppoimentsWidget(
                  imagen: NetworkImage(
                    "https://images.pexels.com/photos/11612904/pexels-photo-11612904.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                  ),
                  namePerson: "Dorothy Nelson",
                  appoiment: "09 Jan 2020, 8am - 10am",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppoimentsWidget extends StatelessWidget {
  ImageProvider<NetworkImage> imagen;
  String namePerson;
  String appoiment;

  AppoimentsWidget({
    required this.imagen,
    required this.namePerson,
    required this.appoiment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: Color(0xff2C3550),
            spreadRadius: -18.0,
            blurRadius: 12,
            offset: Offset(0, -8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          right: 24.0,
          top: 16.0,
          left: 16.0,
          bottom: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: imagen,
                      fit: BoxFit.cover,
                    ),
                    // image: NetworkImage(
                    //   "https://images.pexels.com/photos/11612904/pexels-photo-11612904.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                    // ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 14.0,
                        width: 14.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          height: 10.0,
                          width: 10.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff67FF3E),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      namePerson,
                      // "Dorothy Nelson",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      appoiment,
                      // "09 Jan 2020, 8am - 10am",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff97A3C9),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              ":",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
