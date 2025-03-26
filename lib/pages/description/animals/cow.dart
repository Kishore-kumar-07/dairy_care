import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../modals/Cow.dart';
import '../../../modals/cow_description.dart';
import '../../../utils/cowtile.dart';
import '../Details_page.dart';
import 'package:get/get.dart';

class Cow_description extends StatefulWidget {

  const Cow_description({Key? key}) : super(key: key);

  @override
  State<Cow_description> createState() => _Cow_descriptionState();
}

class _Cow_descriptionState extends State<Cow_description> {
  final Controler = TextEditingController();



  List<dairyanimal> Cows_list = [
    //Gir
    dairyanimal(  "cowname_gir".tr,  "lib/COW_IMAGES/Gir.png"),
    //hallikar
    dairyanimal(
         "cowname_hallikar".tr,  "lib/COW_IMAGES/Hallikar.png"),
    //hf
    dairyanimal(
        "cowname_Holstein Friesian".tr,
      "lib/COW_IMAGES/Holstein Friesian.png"),
     //jersy
    dairyanimal(
        "cowname_jersey".tr, "lib/COW_IMAGES/Jersy.png"),
    //kangeyam
    dairyanimal( "cowname_Kangeyam".tr,  "lib/COW_IMAGES/Kangeyam.png"),
    //rathi
    dairyanimal( "cowname_Rathi".tr,  "lib/COW_IMAGES/Rathi.png"),
    //re sindhi
    dairyanimal( "cowname_Red Sindhi".tr,  "lib/COW_IMAGES/Red Sindhi.png"),
    //sahiwal
    dairyanimal("cowname_Sahiwal".tr,  "lib/COW_IMAGES/Sahiwal.png"),
    //Tharparkar
    dairyanimal( "cowname_Tharparkar".tr,  "lib/COW_IMAGES/Tharparkar.png"),
    //Umblachery
    dairyanimal( "cowname_Umblachery".tr,  "lib/COW_IMAGES/Umblachery.png"),
    //ongole
    dairyanimal("cowname_Ongole".tr, "lib/COW_IMAGES/ongole.png"),
    //deoni
    dairyanimal("cowname_Deoni".tr, "lib/COW_IMAGES/deoni_cow.png"),
    //kankrej
    dairyanimal("cowname_Kankrej".tr, "lib/COW_IMAGES/kankrej_cow.png"),
    //Hariana
    dairyanimal("cowname_Hariana".tr, "lib/COW_IMAGES/hariana-removebg-preview.png")
  ];

  List<animaldiscription> desccription = [
    //Gir
    animaldiscription(
        detail: "cowdescription_gir".tr,
        //"""The breed is found in Rajasthan, Gujarat and Maharashtra. It is also known as “Desan” or “Gujarati” or “Surati” or “Kathiawari” or “Sorthi”.It has red color body having white spots, dome shaped head and long ears. It gives an average 2110ltr of milk per lactation.  """,
        productivity: "productivity_gir".tr,
        lifespan: "lifespan_gir".tr, milkFat: "milkfat_gir".tr),
    //Hallikar
    animaldiscription(
        detail: 'cowdescription_hallikar'.tr,
        productivity: "productivity_hallikar".tr,
        lifespan: "lifespan_hallikar".tr, milkFat: "milkfat_hallikar".tr),
    //Holstein Friesian
    animaldiscription(
        detail:"cowdescription_Holstein Friesian".tr,
        productivity: "productivity_Holstein Friesian".tr,
        lifespan:  "lifespan_Holstein Friesian".tr, milkFat: "milkfat_Holstein Friesian".tr),
    //Jersy
    animaldiscription(
        detail: "cowdescription_jersey".tr,
        //"""It is native to Jersey Island, U.K. It has brown color body having red spots on it, angular and compact body and dished forehead. It is the smallest breed among all other breeds. It gives 20ltr of milk daily. It gives 3500-4000kg of milk per lactation and the milk contains 5% of fat content. The bull has an average weight of 540-820kg and that of cow is 400-500kg. Hoshiarpur, Ropar and Gurdaspur are the main regions of India in which jersey cow is found.  """,
        productivity: "productivity_jersey".tr,
        lifespan: "lifespan_jersey".tr, milkFat: "milkfat_jersey".tr),
    //Kangeyam
    animaldiscription(
        detail: "cowdescription_Kangeyam".tr,
        productivity: "productivity_Kangeyam".tr,
        lifespan: "lifespan_Kangeyam".tr, milkFat: "milkfat_Kangeyam".tr),
    //Rathi
    animaldiscription(
        detail: "cowdescription_Rathi".tr,
        productivity: "productivity_Rathi".tr,
        lifespan: "lifespan_Rathi".tr, milkFat: "milkfat_Rathi".tr),
    //Red Sindhi
    animaldiscription(
        detail: "cowdescription_Red Sindhi".tr,
        productivity: "productivity_Red Sindhi".tr,
        lifespan: "lifespan_Red Sindhi".tr, milkFat: "milkfat_Red Sindhi".tr),
    //Sahiwal
    animaldiscription(
        detail:"cowdescription_Sahiwal".tr,
        productivity: "productivity_Sahiwal".tr,
        lifespan: "lifespan_Sahiwal".tr, milkFat: "milkfat_Sahiwal".tr),
    //Tharparkar
    animaldiscription(
        detail: "cowdescription_Tharparkar" .tr,
        productivity: "productivity_Tharparkar".tr,
        lifespan: "lifespan_Tharparkar".tr, milkFat: "milkfat_Tharparkar".tr),
    //Umblachery
    animaldiscription(
        detail:
        "cowdescription_Umblachery".tr,
        productivity: "productivity_Umblachery".tr,
        lifespan: "lifespan_Umblachery".tr, milkFat: "milkfat_Umblachery".tr),

    //ongole
    animaldiscription(detail: "cowdescription_Ongole".tr, productivity: "productivity_Ongole".tr, lifespan: "lifespan_Ongole".tr, milkFat: "milkfat_Ongole".tr),
    //deoni
    animaldiscription(detail: "cowdescription_Deoni".tr, productivity: "productivity_Deoni".tr, lifespan: "lifespan_Deoni", milkFat: "milkfat_Deoni".tr),
    //kankrej
    animaldiscription(detail: "cowdescription_Kankrej".tr, productivity: "productivity_Kankrej".tr, lifespan: "lifespan_Kankrej".tr, milkFat: "milkfat_Kankrej".tr),
    //Hariana
    animaldiscription(detail: "cowdescription_Hariana".tr, productivity:"productivity_Hariana".tr, lifespan: "lifespan_Hariana".tr, milkFat: "milkfat_Hariana".tr)


  ];


  
  
  void cow_details(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => detailspage(
          da: Cows_list[index],
          ad: desccription[index],
        ),
      ),
    );
  }

  List<dairyanimal> searched=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      searched = Cows_list;
    });
  }
  onSearch(String search){
    print(search);
  }
  @override
  Widget build(BuildContext context) {
    Color bgcolor = Color(0xffB1D2B1);
    // Color bgcolor = Color(0xffFFEAEE);
    Color boxColor = Color(0xff99D5C9);
    Color shadowCLR = Color(0xff739072);
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Cow",
                style: GoogleFonts.ubuntu(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold))),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: bgcolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Container(
                // height: 150,
                child: Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: Cows_list.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => da_list(
                      da: Cows_list[index],
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
