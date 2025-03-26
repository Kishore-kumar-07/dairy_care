import 'package:dairy_care/modals/Cow.dart';
import 'package:dairy_care/modals/cow_description.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detailspage extends StatefulWidget {
  final dairyanimal da;
  final animaldiscription ad;

  const detailspage({Key? key, required this.da, required this.ad})
      : super(key: key);

  @override
  State<detailspage> createState() => _detailspageState();
}

class _detailspageState extends State<detailspage> {




  @override
  Widget build(BuildContext context) {
    Color bgcolor = Color(0xffB1D2B1);
    // Color bgcolor = Color(0xffFFEAEE);
    Color boxColor = Color(0xff99D5C9);
    Color shadowCLR = Color(0xff739072);
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true ,
         title:Text(
          widget.da.name.toUpperCase() + " Details",
          style: GoogleFonts.ubuntu(fontSize: 30, color: Colors.black,fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
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
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      widget.da.ImagePath,
                      height: 250,
                    ),
                    Text(widget.da.name.toUpperCase(),
                        style: GoogleFonts.ubuntu(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            //description
                            Text(
                              "Description:",
                              style: GoogleFonts.ubuntu(
                                  fontSize: 25,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                widget.ad.detail,
                                style: GoogleFonts.ubuntu(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),

                            //productivity
                            Text(
                              "Productivity Per Day:",
                              style: GoogleFonts.ubuntu(
                                  fontSize: 25,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                widget.ad.productivity,
                                style: GoogleFonts.ubuntu(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),

                            //lifespan
                            Text(
                              "LifeSpan:",
                              style: GoogleFonts.ubuntu(
                                  fontSize: 25,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                widget.ad.lifespan,
                                style: GoogleFonts.ubuntu(
                                    fontSize: 18 ,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            //productivity
                            // Text(
                            //   "Milk Fat:",
                            //   style: GoogleFonts.ubuntu(
                            //       fontSize: 25,
                            //       color: Colors.grey,
                            //       fontWeight: FontWeight.bold),
                            // ),
                            // Padding(
                            //   padding:
                            //   const EdgeInsets.symmetric(horizontal: 10),
                            //   child: Text(
                            //     widget.ad.milkFat,
                            //     style: GoogleFonts.ubuntu(
                            //         fontSize: 15,
                            //         color: Colors.black,
                            //         fontWeight: FontWeight.bold),
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
