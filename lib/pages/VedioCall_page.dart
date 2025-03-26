import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';
final String localUserID = math.Random().nextInt(10000).toString();
String ConId =  "10";

const String callID = "group_call_id";
var conferenceDTextCtrl1 = TextEditingController();


class VedioCall extends StatefulWidget {
  VedioCall ({Key? key}) : super(key: key);

  final DatabaseReference _databaseReference =
  FirebaseDatabase.instance.reference();

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<VedioCall > {

  var conferenceDTextCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color bgcolor = Color(0xffB1D2B1);
    // Color bgcolor = Color(0xffFFEAEE);
    Color boxColor = Color(0xff99D5C9);
    Color shadowCLR = Color(0xff739072);
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(title: Text("Call a Doctor",style: GoogleFonts.ubuntu(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),centerTitle: true,backgroundColor: Colors.transparent,elevation: 0,),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(
              //   Icons.video_call,
              //   size: 100,
              //   color: Colors.blue[900],
              // ),
              // Text(
              //   "Video call with Zego Cloud",
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     color: Colors.blue[900],
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: conferenceDTextCtrl1,
                      decoration:
                      const InputDecoration(labelText: "Enter Name",enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3,color:Color(0xff000000))) ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Expanded(
                  //   child: TextFormField(
                  //     controller: conferenceDTextCtrl,
                  //     decoration: const InputDecoration(
                  //         labelText: "Join a conference by id"),
                  //   ),
                  // ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor:shadowCLR,),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return VideoConferencePage(
                                  // conferenceID: conferenceDTextCtrl.text,
                                  conferenceID: "10",
                                );
                              }),
                            );
                          },
                          child:  Text("Call Doctor")),
                    ),
                  ),
                  // Container(
                  //   color: Colors.lightBlueAccent,
                  //   height:100,
                  //   width: 100,
                  //   child: Center(child: Text(ConId,style: GoogleFonts.dmSans(color: Colors.black,fontSize:25),)),
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoConferencePage extends StatelessWidget {
  final String conferenceID;

  const VideoConferencePage({
    Key? key,
    required this.conferenceID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltVideoConference(
        appID: 741037196,
        appSign:
        "2310a85038ce4e51e967d72375e99816db4ddceafd90b668326afacde4f8d318",
        userID: localUserID,
        userName: conferenceDTextCtrl1.text,
        conferenceID: conferenceID,
        config: ZegoUIKitPrebuiltVideoConferenceConfig(),
      ),
    );
  }
}

