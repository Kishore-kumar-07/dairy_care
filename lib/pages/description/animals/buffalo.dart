import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../modals/Cow.dart';
import '../../../modals/cow_description.dart';
import '../../../utils/cowtile.dart';
import '../Details_page.dart';

class buffalo_description extends StatefulWidget {
  const buffalo_description({Key? key}) : super(key: key);

  @override
  State<buffalo_description> createState() => _buffalo_descriptionState();
}

class _buffalo_descriptionState extends State<buffalo_description> {
  List<String> names = [
    "cowname_gir".tr,
    "cowname_hallikar".tr,
    "Holstein Friesian",
    "cowname_jersey".tr,
    "Kangeyam",
    "Rathi",
    "Red Sindhi",
    "Sahiwal",
    "Tharparkar",
    "Umblachery",
  ];
  List <dairyanimal>buffalos = [
    dairyanimal( "buffaloname_Murrah" .tr,  "lib/COW_IMAGES/murrah.png"),
    dairyanimal( "buffaloname_Surti".tr,  "lib/COW_IMAGES/Surti.png"),

    dairyanimal( "buffaloname_Jaffarabadi".tr,
         "lib/COW_IMAGES/3_Jaffarabadi-removebg-preview.png"),
    dairyanimal( "buffaloname_Mehsana".tr,  "lib/COW_IMAGES/mehsana.png"),
    dairyanimal("buffaloname_Pandharpuri" .tr,  "lib/COW_IMAGES/pandharpuri.png"),
    dairyanimal( "buffaloname_Chilika".tr, "lib/COW_IMAGES/CHILIKA-M-removebg-preview.png"),
    dairyanimal( "buffaloname_Toda".tr,  "lib/COW_IMAGES/toda-buffalo.png"),
    dairyanimal( "buffaloname_Bhadawari".tr, "lib/COW_IMAGES/Bhadawari-Buffalo-Images-300x246-removebg-preview.png"),
    dairyanimal(  "buffaloname_Kalahandi".tr,  "lib/COW_IMAGES/kalahandi_buffalo-removebg-preview.png"),

  ];

  List<animaldiscription> desccription = [
    //Gir
    animaldiscription(
        detail: "buffalodescription_Murrah" .tr,
        productivity: "productivity_Murrah".tr,
        lifespan: "lifespan_Murrah".tr, milkFat: "milkfat_Murrah".tr),
    //Hallikar
    animaldiscription(
        detail:
        "buffalodescription_Surti".tr,
        productivity: "productivity_Surti".tr,
        lifespan: "lifespan_Surti".tr, milkFat: "milkfat_Surti".tr),
    //Holstein Friesian
    animaldiscription(
        detail:
        "buffalodescription_Jaffarabadi".tr,
        productivity: "productivity_Jaffarabadi".tr,
        lifespan: "lifespan_Jaffarabadi".tr, milkFat:"milkfat_Jaffarabadi".tr ),
    //Jersy
    animaldiscription(
        detail: "buffalodescription_Pandharpuri".tr,
        productivity: "productivity_Pandharpuri".tr,
        lifespan: "lifespan_Pandharpuri".tr, milkFat: "milkfat_Pandharpuri".tr),
    //Kangeyam
    animaldiscription(
        detail:
        "buffalodescription_Chilika".tr,
        productivity:"productivity_Chilika".tr,
        lifespan: "lifespan_Chilika".tr, milkFat: "milkfat_Chilika".tr),
    //Rathi
    animaldiscription(
        detail:
        "buffalodescription_Toda".tr,
        productivity: "productivity_Toda".tr,
        lifespan: "lifespan_Toda".tr, milkFat: "milkfat_Toda".tr),
    //Red Sindhi
    animaldiscription(
        detail:
        "buffalodescription_Bhadawari".tr,
        productivity: "productivity_Bhadawari".tr,
        lifespan: "lifespan_Bhadawari".tr, milkFat: "milkfat_Bhadawari".tr),
    //Sahiwal
    animaldiscription(
        detail:
        """ The previous district of this breed is Montgomery (Pakistan). These breed animals have red-brown color body, medium size body, small legs, loose skin, head is somewhat wide, small and heavy horns, heavy fringe is present below the neck and have large udder. It is the highest milk giving Indian breed. The breeding tract of the breed is Ferozpur and Amritsar districts of Punjab and Sri Ganganagar district of Rajasthan. Good herds of pure Sahiwal cattle are available around Fazilka and Abohar towns of Ferozpur district in Punjab. The bullocks are lethargic and are slow in work. This breed is also known as “Lambi Bar”, “Lola”, “Montgomery”, “Multani” and “Teli”. It gives an average 1800ltr of milk per lactation period. The milk contains 5.0% fat content. The average weight of adult ox is 5.5qtl and that of cow is 4qtl.""",
        productivity: "10 to 18 liters",
        lifespan: "12 to 15 years", milkFat: 's'),
    //Tharparkar
    animaldiscription(
        detail:
        "buffalodescription_Kalahandi".tr,
        productivity: "productivity_Kalahandi".tr,
        lifespan: "lifespan_Kalahandi".tr, milkFat: "milkfat_Kalahandi".tr),

  ];
  void cow_details(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => detailspage(
          da: buffalos[index],
          ad: desccription[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color bgcolor = Color(0xffB1D2B1);
    // Color bgcolor = Color(0xffFFEAEE);
    Color boxColor = Color(0xff99D5C9);
    Color shadowCLR = Color(0xff739072);
    return Scaffold(
      appBar: AppBar(title:Center(child: Text("Buffalo",style: GoogleFonts.ubuntu(fontSize: 35, color: Colors.black,fontWeight: FontWeight.bold))),backgroundColor: Colors.transparent,elevation: 0,),
      backgroundColor: bgcolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // height: 150,
                child: Expanded(
                  child:  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemCount: buffalos.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => da_list(
                      da: buffalos[index],
                      onTap: () => cow_details(index),
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
