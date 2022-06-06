import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class List3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List 3"),
        backgroundColor: const Color(0xffCBCBCB),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 12,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      "https://picsum.photos/500/500/?image=$index",
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Web Design",
                          style: GoogleFonts.montserrat(
                            color: Color(0xff3e4752),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "Wade Warren",
                          style: GoogleFonts.montserrat(
                            color: Color(0xff3e4752).withOpacity(0.6),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "07/14/2020",
                        style: GoogleFonts.montserrat(
                          color: Color(0xff3e4752).withOpacity(0.45),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 6.0,
                            width: 6.0,
                            decoration: BoxDecoration(
                              color: Color(0xff3FC2A3),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                          Text(
                            "Completed",
                            style: GoogleFonts.montserrat(
                              color: Color(0xff3FC2A3),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
