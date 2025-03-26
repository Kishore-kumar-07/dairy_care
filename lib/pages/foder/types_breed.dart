import 'package:dairy_care/pages/description/animals/buffalo.dart';
import 'package:dairy_care/pages/description/animals/goat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Exortic.dart';
import 'Indigenous.dart';



class Season_foder extends StatelessWidget {
  const Season_foder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bgcolor = Color(0xffB1D2B1);
    // Color bgcolor = Color(0xffFFEAEE);
    Color boxColor = Color(0xff99D5C9);
    Color shadowCLR = Color(0xff739072);
    return Scaffold(
      backgroundColor:bgcolor,
      appBar: AppBar(
        title: Text("Fodder Ratio",
            style: GoogleFonts.ubuntu(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        elevation: 0,
        backgroundColor: bgcolor,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 80),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Indigenous()));
              },
              child: Container(
                padding: EdgeInsets.all(25),
                height: 200,
                width: 100,
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
                child:Center(
                  child: Text(
                    "Indigenous Variant".tr,
                        style:
                        GoogleFonts.ubuntu(fontSize: 25, color: Colors.black),
                      ),
                ),
                    //image
                    // Image.asset(
                    //   "lib/Images/cow_description.png",
                    //   height: 100,
                    // ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 40),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Exortic()));
              },
              child: Container(
                padding: EdgeInsets.all(25),
                height: 200,
                width: 150,
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
                child:
                    //description name

                    Center(
                      child: Text(
                        "Exortic Variant".tr,
                        style: GoogleFonts.ubuntu(fontSize: 25, color: Colors.black),
                      ),
                    ),
                    //image
                    // Image.asset(
                    //   "lib/Images/goat_description.png",
                    //   height: 100,
                    // ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
