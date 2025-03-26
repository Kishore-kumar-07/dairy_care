import 'package:avatar_glow/avatar_glow.dart';
import 'package:dairy_care/pages/chatbot/bot_page.dart';
import 'package:dairy_care/pages/taskmanager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:popover/popover.dart';
import 'package:provider/provider.dart';

import 'dart:math';
import '../notification.dart';
import '../provider/auth_provider.dart';
import 'VedioCall_page.dart';
import 'description/description.dart';
import 'foder/types_breed.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List <COW>_search = [];

  // void initState() {
  //   _search = Cows;
  //   super.initState();
  //   // setState(() {
  //   //
  //   // });
  // }
  // void _Filter(String key){
  //   List<COW>result=[];
  //   if(key.isEmpty){
  //     result = Cows;
  //   }
  //   else{
  //     result = Cows.where((element) => Cows,);
  //   }
  // }

  static List<String> Tips = [
    // "Regularly inspect your cows for any signs of illness or discomfort.",
    // "Maintain a clean and comfortable living environment for your cows to thrive.",
    // "Ensure your cows receive proper veterinary care and vaccinations.",
    // "Monitor the quality of their forage and ensure they have access to fresh pasture.",
    // "Implement a consistent milking routine to maximize milk production.",
    // "Protect your cows from extreme weather conditions with shelter and shade.",
    // "Practice proper hoof care to prevent lameness and discomfort.",
    // "Promote social interaction among your cows to reduce stress and improve well-being.",
    // "Handle your cows calmly and gently to build trust and minimize stress.",
    // "Consider rotational grazing to manage pasture health and optimize nutrition for your herd.",
    // "Make sure to provide your cows with clean water and a balanced diet for their optimal health."

    'Home_page_tip1',
    'Home_page_tip2',
    'Home_page_tip3',
    'Home_page_tip4',
    'Home_page_tip5',
    'Home_page_tip6',
    'Home_page_tip7',
    'Home_page_tip8',
    'Home_page_tip9',
    'Home_page_tip10',
    'Home_page_tip11',
  ];
  var Index = Random().nextInt((Tips.length) - 1);

  @override
  Widget build(BuildContext context) {
    Color bgcolor = Color(0xffB1D2B1);
    // Color bgcolor = Color(0xffFFEAEE);
    Color boxColor = Color(0xff99D5C9);
    Color shadowCLR = Color(0xff739072);


    final TextEditingController _controller = TextEditingController();
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        "Home_page_title".tr,
        style: GoogleFonts.ubuntu(
            fontSize: 35,
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      //   title: Row(
      //     children: [
      //       Text(
      //         "Home_page_title".tr,
      //         style: GoogleFonts.ubuntu(
      //             fontSize: 25,
      //             color: Colors.black,
      //             fontWeight: FontWeight.bold),
      //       ),
      //       SizedBox(
      //         width: 25,
      //       ),
      //     //   ElevatedButton(
      //     //     autofocus: false,
      //     //     style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,elevation: 0),
      //     //       onPressed: () {
      //     //         Get.updateLocale(Locale('en', 'US'));
      //     //       },
      //     //       child: Text(
      //     //         'eng_button'.tr,
      //     //         style: TextStyle(fontSize: 13,color: Colors.black),
      //     //       ),
      //     //   ),
      //     //   SizedBox(
      //     //     width: 2,
      //     //   ),
      //     //   ElevatedButton(
      //     //       style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,elevation: 0),
      //     //       onPressed: () {
      //     //         Get.updateLocale(Locale('ta', 'IN'));
      //     //       },
      //     //       child: Text(
      //     //         "tam_button".tr,
      //     //         style: TextStyle(fontSize: 13,color: Colors.black),
      //     //       ),
      //     //   ),
      //     ],
      //   ),
      //   // leading: Icon(
      //   //   Icons.menu,
      //   //   size: 25,
      //   //   color: Colors.black,
      //   // ),
      //   centerTitle: true,
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      drawer: Drawer(
        child: Container(
          color: bgcolor,
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black
                  ),
                  child: Center(
                    child: Text(
                "DAIRY CARE",
                style: GoogleFonts.ubuntu(fontSize: 35,color: Colors.white),
              ),
                  )),
              ListTile(
                title: Text(
                  'Home',
                  style: GoogleFonts.ubuntu(fontSize: 25),
                ),
                onTap: () {},
              ),
              // ListTile(
              //   title: Text(
              //     'settings',
              //     style: TextStyle(fontSize: 25),
              //   ),
              //   onTap: () {},
              // ),
              ListTile(
                title: Text(
                  'Info',
                  style: GoogleFonts.ubuntu(fontSize: 25),
                ),
                onTap: () {},
              ),
              SizedBox(height: 25,),
              ListTile(
                title: Text("Languages: ",style: GoogleFonts.ubuntu(fontSize: 25),),
              ),

              ListTile(
                title: Text(
                    'eng_button'.tr.toUpperCase(),
                  style: GoogleFonts.ubuntu(fontSize: 18),
                ),
                onTap: () {Get.updateLocale(Locale('en', 'US'));},
              ),  ListTile(
                title: Text(
                  "tam_button".tr.toUpperCase(),
                  style: GoogleFonts.ubuntu(fontSize: 18),
                ),
                onTap: () { Get.updateLocale(Locale('ta', 'IN'));},
              ),
              SizedBox(
                height: 200,
              ),

            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 360,
                  decoration: BoxDecoration(
                    color: boxColor,
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
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, bottom: 10),
                              child: Image.asset(
                                "lib/Images/sun (1).png",
                                height: 40,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Image.asset(
                                "lib/Images/cloudy.png",
                                height: 40,
                              ),
                            ),
                            Image.asset(
                              "lib/Images/cloudy.png",
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Image.asset(
                                "lib/Images/cloudy.png",
                                height: 40,
                              ),
                            ),
                            Image.asset(
                              "lib/Images/cloudy.png",
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          // child: Text(
                          //   Tips[Index].toString(),
                          //   style:
                          //       GoogleFonts.ubuntu(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                          // ),
                          child: Container(
                              height: 75,
                              width: 355,
                              child: PageView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Container(
                                  decoration:
                                      BoxDecoration(color: Colors.transparent),
                                  child: Text(
                                    Tips[index].tr,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                itemCount: Tips.length,
                              )),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "lib/Images/grass_cow.png",
                            height: 50,
                          ),
                        ],
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25),
                //   child: TextField(
                //     // onChanged: (value)=>_Filter(value),
                //     decoration: InputDecoration(
                //       hintText: "Search",
                //       hintStyle: TextStyle(
                //           fontWeight: FontWeight.bold, color: Colors.grey[800]),
                //       suffixIcon: Icon(
                //         Icons.search_rounded,
                //         color: Colors.grey[800],
                //       ),
                //       focusedBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(15),
                //         borderSide: BorderSide(color: Color(0xff102C57)),
                //       ),
                //       enabledBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(15),
                //         borderSide: BorderSide(color: boxColor),
                //       ),
                //     ),
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => description()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: boxColor,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "lib/Images/barn.png",
                                  height: 90,
                                ),
                                Text("Home_page_dairyanimals".tr,
                                    style: GoogleFonts.ubuntu(
                                        fontSize: 15,
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VedioCall()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: boxColor,
                                  borderRadius: BorderRadius.circular(15),
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
                              height: 150,
                              width: 150,
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "lib/Images/camcorder.png",
                                      height: 85,
                                    ),
                                    Text("Home_page_Video Call".tr,
                                        style: GoogleFonts.ubuntu(
                                            fontSize: 15,
                                            color: Colors.grey[600],
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20),
                //   child: Container(
                //     height: 150,
                //     child: Expanded(
                //       child: ListView.builder(
                //         itemCount: Cows.length,
                //         scrollDirection: Axis.horizontal,
                //         itemBuilder: (context, index) => da_list(
                //           da: Cows[index],
                //           onTap: () => cow_details(index),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                Padding(
                  padding: const EdgeInsets.only(top:25),
                  child: Row(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => chatbot()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: boxColor,
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
                          height: 150,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  "lib/Images/bot_img.png",
                                  height: 85,
                                ),
                                Text("Home_page_Chat Bot".tr,
                                    style: GoogleFonts.ubuntu(
                                        fontSize: 15,
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Season_foder()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: boxColor,
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
                          height: 150,
                          width: 150,
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Image.asset(
                                  "lib/Images/feed.png",
                                  height: 80,
                                ),
                                Text("fodder_ratio".tr,
                                    style: GoogleFonts.ubuntu(
                                        fontSize: 15,
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                  ]),
                ),
                // Row(
                //   children: [
                //     GestureDetector(
                //       onTap: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => MyHomePage(title: 'nothing')),
                //         );
                //       },
                //       child: Padding(
                //         padding: const EdgeInsets.only(bottom: 25, right: 25, left: 25),
                //         child: Container(
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(15),
                //             color: boxColor,
                //           ),
                //           height: 150,
                //           width: 120,
                //
                //           child: Center(
                //               child: Text(
                //             "Home_page_notification".tr,
                //             style: GoogleFonts.ubuntu(
                //                 fontSize: 15, color: Colors.grey[500]),
                //           )),
                //         ),
                //       ),
                //     ),
                //     GestureDetector(
                //       onTap: () {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => Season_foder()));
                //       },
                //       child: Padding(
                //         padding: const EdgeInsets.only(bottom: 20),
                //         child: Container(
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(15),
                //             color: boxColor,
                //           ),
                //           height: 150,
                //           width: 190,
                //           child: Center(child: Text("foder feed")),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
