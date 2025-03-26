import 'package:dairy_care/auth/home.dart';
import 'package:dairy_care/auth/register_screen.dart';
import 'package:dairy_care/pages/Home_Page.dart';
import 'package:dairy_care/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bgcolor = Color(0xffffffff);
    Color boxColor = Color(0xffB1D2B1);
    return Scaffold(
      backgroundColor: boxColor,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
            child: Text("Intro_page_Title".tr,style: GoogleFonts.ubuntu(fontSize: 50)),
          ),
          Column(
            children: [
              Lottie.asset("lib/Lottie_animation/Cow.json"),
              Text("Intro_page_Quote".tr,style: GoogleFonts.ubuntu(fontSize: 25)),
            ],
          ),

          SizedBox(height: 25),
          GestureDetector(onTap:(){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context)=>HomePage())
            );
          },child: Mybutton(txt: "Intro_page_button".tr, Width: 300)),

        ],
      ),

    );
  }
}
