import 'package:dairy_care/pages/description/animals/buffalo.dart';
import 'package:dairy_care/pages/description/animals/goat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../description/animals/cow.dart';
import 'climate/Exortic/Rainy.dart';
import 'climate/Exortic/Summer.dart';
import 'climate/Exortic/Winter.dart';


class Exortic extends StatelessWidget {
  const Exortic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bgcolor = Color(0xffB1D2B1);
    // Color bgcolor = Color(0xffFFEAEE);
    Color boxColor = Color(0xff99D5C9);
    Color shadowCLR = Color(0xff739072);
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: Text("Seasons",
            style: GoogleFonts.ubuntu(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Exortic_Summer()));
              },
              child: Container(
                padding: EdgeInsets.all(25),
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(8),
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
                    ]
                ),
                child: Row(
                  children: [
                    //description name

                    Text(
                      "Summer".tr,
                      style:
                      GoogleFonts.ubuntu(fontSize:30, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    //image
                    Image.asset(
                      "lib/COW_IMAGES/sunny.png",
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Exortic_Winter()));
              },
              child: Container(
                padding: EdgeInsets.all(25),
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(8),
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
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //description name

                    Text(
                      "Winter".tr,
                      style: GoogleFonts.ubuntu(fontSize: 30, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    //image
                    Image.asset(
                      "lib/COW_IMAGES/snowflake.png",
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Exortic_Rainy()));
              },
              child: Container(
                padding: EdgeInsets.all(25),
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(8),
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
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //description name

                    Text(
                      "Rainy".tr,
                      style: GoogleFonts.ubuntu(fontSize: 30, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    //image
                    Image.asset(
                      "lib/COW_IMAGES/rainy.png",
                      height: 80,
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
