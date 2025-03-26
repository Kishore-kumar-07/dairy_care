import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../modals/Cow.dart';
import '../../../modals/cow_description.dart';
import '../../../utils/cowtile.dart';
import '../Details_page.dart';

class goat_description extends StatefulWidget {
  const goat_description({Key? key}) : super(key: key);

  @override
  State<goat_description> createState() => _goat_descriptionState();
}

class _goat_descriptionState extends State<goat_description> {
  List<String> names = [
    "cowname_gir".tr,
    "cowname_hallikar".tr,
    "Holstein Friesian",
    "cowname_jersey".tr,
    "Kangeyam".tr,
    "Rathi",
    "Red Sindhi",
    "Sahiwal",
    "Tharparkar",
    "Umblachery",
  ];
  List <dairyanimal>goats = [
    dairyanimal( "Gir",  "lib/COW_IMAGES/Gir.png"),
    dairyanimal( "Hallikar",  "lib/COW_IMAGES/Hallikar.png"),

    dairyanimal( "Holstein Friesian",
         "lib/COW_IMAGES/Holstein Friesian.png"),
    dairyanimal( "Jersy", "lib/COW_IMAGES/Jersy.png"),
    dairyanimal( "Kangeyam",  "lib/COW_IMAGES/Kangeyam.png"),
    dairyanimal( "Rathi",  "lib/COW_IMAGES/Rathi.png"),
    dairyanimal( "Red Sindhi",  "lib/COW_IMAGES/Red Sindhi.png"),
    dairyanimal( "Sahiwal",  "lib/COW_IMAGES/Sahiwal.png"),
    dairyanimal( "Tharparkar", "lib/COW_IMAGES/Tharparkar.png"),
    dairyanimal( "Umblachery",  "lib/COW_IMAGES/Umblachery.png"),
  ];

  List<animaldiscription> desccription = [
    //Gir
    animaldiscription(
        detail:
        """The breed is found in Rajasthan, Gujarat and Maharashtra. It is also known as “Desan” or “Gujarati” or “Surati” or “Kathiawari” or “Sorthi”.It has red color body having white spots, dome shaped head and long ears. It gives an average 2110ltr of milk per lactation.  """,
        productivity: "8 to 12 liters per day",
        lifespan: "12 to 15 years", milkFat: 's'),
    //Hallikar
    animaldiscription(
        detail:
        """It is mainly found in Mandya, Bangalore, Mysore, Tumkur, Kolar and Chitradurga districts of South Karnataka. They are small sized animal. It has white to grey body color, long horns which are vertical and bending backward side, large humps and has shoulders and hindquarters dark in color. The breed can perform well when feed comprises of green fodder such as sorghum, finger millet or pearl millet. The cow gives an average of 500-550ltr milk per lactation period. The milk contains 5.7% fat content. """,
        productivity: "2 to 5 liters per day",
        lifespan: "12 to 15 years", milkFat: 's'),
    //Holstein Friesian
    animaldiscription(
        detail:
        """ It is native to Holland. It is known as the best breed for milk production. It gives an average yield of 5500-6500kg of milk per lactation and contains 3.5-4.0% of fat content. On an average it gives 25ltr of milk daily. The mix breed of this cow gives 10-15lts of milk daily. The cow has an average weight of 580kg.""",
        productivity: "20 to 40 liters per day",
        lifespan: "6 to 8 years", milkFat: 's'),
    //Jersy
    animaldiscription(
        detail:
        """It is native to Jersey Island, U.K. It has brown color body having red spots on it, angular and compact body and dished forehead. It is the smallest breed among all other breeds. It gives 20ltr of milk daily. It gives 3500-4000kg of milk per lactation and the milk contains 5% of fat content. The bull has an average weight of 540-820kg and that of cow is 400-500kg. Hoshiarpur, Ropar and Gurdaspur are the main regions of India in which jersey cow is found.  """,
        productivity: "19 to 23 liters",
        lifespan: "8 to 12 years", milkFat: 's'),
    //Kangeyam
    animaldiscription(
        detail:
        """ The Kangeyam cow is an indigenous breed from Tamil Nadu, India, known for its exceptional strength and endurance, making it ideal for agricultural tasks. It has a sturdy build, gray or white coat, and distinctive hump and upward-curving horns. These cows have a docile temperament and are valued for their contribution to traditional farming practices. Conservation efforts aim to safeguard the genetic diversity of the Kangeyam cow and maintain its cultural significance. Preserving this breed is crucial for sustaining agricultural traditions and promoting sustainable farming practices.""",
        productivity: "5 to 10 liters",
        lifespan: "10 to 15 years", milkFat: 's'),
    //Rathi
    animaldiscription(
        detail:
        """The breed is native to Rajasthan. The breed tract includes Thar Desert and Bikaner, Ganganagar and Jaisalmer districts of Rajasthan. It is found mainly in brown color with white patches and sometimes it is also found in black or brown coat with white patches. The lower body part is usually lighter in color as compared to the rest of the body. It has broad face, long tail and fine and loose dewlap. The average lactation milk yield is 1560kg. The range of lactation milk yield is 1000-2800kg. The age at first calving should be 36-52months and inter calving period is 15-20months """,
        productivity: "5 to 10 liters",
        lifespan: "10 to 15 years", milkFat: 's'),
    //Red Sindhi
    animaldiscription(
        detail:
        """ The previous district of this breed is Sindh (Pakistan). It is also known as “Red Karachi” and “Sindhi” and “Mahi”. The breed is medium in height, deep red body color, healthy body which is medium in shape, wide head, small and thick horns, long tail, small legs, and loose skin. The care of this breed can be taken in variety of climates. This breed is less prone to diseases. It gives an average 1600ltr of milk per lactation period. The milk contains 5.0% fat content. The ox of this breed works well in fields. The average weight of adult ox is 4.5qtl and that of cow is 3.15qtl.""",
        productivity: "5 to 10 liters",
        lifespan: "10 to 15 years", milkFat: 's'),
    //Sahiwal
    animaldiscription(
        detail:
        """ The previous district of this breed is Montgomery (Pakistan). These breed animals have red-brown color body, medium size body, small legs, loose skin, head is somewhat wide, small and heavy horns, heavy fringe is present below the neck and have large udder. It is the highest milk giving Indian breed. The breeding tract of the breed is Ferozpur and Amritsar districts of Punjab and Sri Ganganagar district of Rajasthan. Good herds of pure Sahiwal cattle are available around Fazilka and Abohar towns of Ferozpur district in Punjab. The bullocks are lethargic and are slow in work. This breed is also known as “Lambi Bar”, “Lola”, “Montgomery”, “Multani” and “Teli”. It gives an average 1800ltr of milk per lactation period. The milk contains 5.0% fat content. The average weight of adult ox is 5.5qtl and that of cow is 4qtl.""",
        productivity: "10 to 18 liters",
        lifespan: "12 to 15 years", milkFat: 's'),
    //Tharparkar
    animaldiscription(
        detail:
        """It is native to Tharparkar district (Western Pakistan). It is mainly found in Jodhpur, Kutch and Jaisalmer regions of India. It is also known as “Gray Sindhi”, “White Sindhi” and “Thari”. It has white to ash color body, medium sized head, wide head; horns are lyre-shaped and are sharp from the edge. They have small legs, thin and long tail, big and wide hunchback and big size udder having teats at the proper distance. This cow gives 1400ltr milk per lactation period. This breed is a mixed breed. The bullocks are very good for field work. """,
        productivity: "5 to 10 liters",
        lifespan: "12 to 15 years", milkFat: 's'),
    //Umblachery
    animaldiscription(
        detail:
        """It is also known as “Mottaimadhu” or “Southern” or “Jathimandu” or “Therkuthimandu” or “Tanjore”. The breeding tract includes Thiruvarur and Nagapatinam districts of Tamil Nadu. The cow has mainly grey coat color with white marking on the face and the bull is dark grey with black extremities. It has broad and prominent forehead. The average height of bull is 135cm and cow is 105cm. The average lactation milk yield is 495kg. The milk contains approximately 4.9% milk fat. """,
        productivity: "2 to 5 liters",
        lifespan: "10 to 12 years", milkFat: 's'),
  ];
  void cow_details(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => detailspage(
          da: goats[index],
          ad: desccription[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Center(child: Text("Goat",style: GoogleFonts.ubuntu(fontSize: 35, color: Colors.black,fontWeight: FontWeight.bold))),backgroundColor: Color(0xffF8F0E5),elevation: 0,),
      backgroundColor: Color(0xffF8F0E5),
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
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemCount: goats.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => da_list(
                      da: goats[index],
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
