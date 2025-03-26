import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../modals/Cow.dart';

class da_list extends StatelessWidget {
  final dairyanimal da;

  final void Function()? onTap;


  const da_list({Key? key, required this.da, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bgcolor = Color(0xffB1D2B1);
    // Color bgcolor = Color(0xffFFEAEE);
    Color boxColor = Color(0xff99D5C9);
    Color shadowCLR = Color(0xff739072);
    return GestureDetector(
      onTap:onTap ,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(

          height: 180,
          width: 500,
          decoration: BoxDecoration(
            color:boxColor,
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
          margin: EdgeInsets.only(left: 15,right: 15),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10 ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  da.ImagePath,
                  height: 110,
                ),

                Text(
                 da.name,
                  style:
                      GoogleFonts.ubuntu(fontSize: 15, color: Colors.grey[500],fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //Name
        ),
      ),
    );
  }
}
