import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

import '../../../../modals/foder_modal.dart';

class Indigenous_Winter extends StatelessWidget {
  List<Breedmodel> breed = [
    Breedmodel(
        breed: "dry_cow".tr,
        Green_forder: "dry_indigenous_winter_green_fodder".tr,
        Dry_forder: "dry_indigenous_winter_dry_fodder".tr,
        Concentrate: "dry_indigenous_winter_concentrate".tr,
        Total: "dry_indigenous_winter_total".tr),
    Breedmodel(
        breed: "lactation_cow".tr,
        Green_forder: "Lactation_indigenous_winter_green_fodder".tr,
        Dry_forder: "Lactation_indigenous_winter_dry_fodder".tr,
        Concentrate: "Lactation_indigenous_winter_concentrate".tr,
        Total: "Lactation_indigenous_winter_total".tr),
    Breedmodel(
        breed: "heifer_cow".tr,
        Green_forder: "heifer_indigenous_winter_green_fodder".tr,
        Dry_forder: "heifer_indigenous_winter_dry_fodder".tr,
        Concentrate: "heifer_indigenous_winter_concentrate".tr,
        Total: "heifer_indigenous_winter_total".tr),
    Breedmodel(
        breed: "calf_cow".tr,
        Green_forder: "calf_indigenous_winter_green_fodder".tr,
        Dry_forder: "calf_indigenous_winter_dry_fodder".tr,
        Concentrate: "calf_indigenous_winter_concentrate".tr,
        Total: "calf_indigenous_winter_total".tr)
  ];
  Indigenous_Winter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bgcolor = Color(0xffB1D2B1);
    // Color bgcolor = Color(0xffFFEAEE);
    Color boxColor = Color(0xff99D5C9);
    Color shadowCLR = Color(0xff739072);
    return Scaffold(
      backgroundColor: bgcolor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Indigenous Winter",
            style:  GoogleFonts.ubuntu(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: breed.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 360,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          breed[index].breed + ":",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              breed[index].Green_forder + "\n",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              breed[index].Dry_forder + "\n",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              breed[index].Concentrate + "\n",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              breed[index].Total + "\n",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
