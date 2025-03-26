import 'package:dairy_care/pages/description/animals/buffalo.dart';
import 'package:dairy_care/pages/description/animals/goat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'animals/cow.dart';

class description extends StatelessWidget {
  const description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bgcolor = Color(0xffB1D2B1);
    // Color bgcolor = Color(0xffFFEAEE);
    Color boxColor = Color(0xff99D5C9);
    Color shadowCLR = Color(0xff739072);
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: Text("Description",
            style: GoogleFonts.ubuntu(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cow_description()));
              },
              child: Container(
                padding: EdgeInsets.all(25),
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: shadowCLR,
                        offset: Offset(
                            1.0,1.0
                        ),
                        blurRadius: 10.0,
                        spreadRadius: .5

                    ),
                    BoxShadow(
                        color: shadowCLR,
                        offset: Offset(
                            -1.0,-1.0
                        ),
                        blurRadius: 10.0,
                        spreadRadius: .5

                    )
                  ],
                  color: boxColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    //description name

                    Text(
                      "COW".tr,
                      style:
                          GoogleFonts.ubuntu(fontSize: 35, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    //image
                    Image.asset(
                      "lib/Images/cow_description.png",
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(25),
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => goat_description()));
          //     },
          //     child: Container(
          //       padding: EdgeInsets.all(25),
          //       height: 150,
          //       width: 350,
          //       decoration: BoxDecoration(
          //         color: Color(0xffEADBC8),
          //         borderRadius: BorderRadius.circular(8),
          //       ),
          //       child: Row(
          //         children: [
          //           //description name
          //
          //           Text(
          //             "GOAT",
          //             style: GoogleFonts.ubuntu(fontSize: 40, color: Colors.grey),
          //           ),
          //           SizedBox(
          //             width: 20,
          //           ),
          //           //image
          //           Image.asset(
          //             "lib/Images/cow_description.png",
          //             height: 100,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => buffalo_description()));
              },
              child: Container(
                padding: EdgeInsets.all(25),
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: shadowCLR,
                        offset: Offset(
                            1.0,1.0
                        ),
                        blurRadius: 10.0,
                        spreadRadius: .5

                    ),
                    BoxShadow(
                        color: shadowCLR,
                        offset: Offset(
                            -1.0,-1.0
                        ),
                        blurRadius: 10.0,
                        spreadRadius: .5

                    )
                  ],
                  color: boxColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    //description name

                    Text(
                      "BUFFALO".tr,
                      style: GoogleFonts.ubuntu(fontSize: 35, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    //image
                    Image.asset(
                      "lib/Images/buffalo_description.png",
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
