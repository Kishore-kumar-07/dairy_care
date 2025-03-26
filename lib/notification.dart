import 'package:dairy_care/service/notification_service.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  late  String txt ="nu";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(widget.title),

            ElevatedButton(onPressed: (){}, child: Icon(Icons.add)),
          ],
        ),
      ),

      body: Row(
        children: [
          Center(

            child:
              // child:ElevatedButton(onPressed:isButtonActive? (){
              //   setState(() {
              //     isButtonActive=false;
              //   });
              //   if(isButtonActive == true){
              //     NotificationService()
              //      .showNotification(title: 'Sample title', body: 'It works!');            }
              //
              // }:null, child: Icon(Icons.account_box_outlined)),

              
            
            GestureDetector(
              onDoubleTap: (){
                txt="n";
                noti(txt);
              },
              child: ElevatedButton(
                  child: const Text('Show notifications'),
                  onPressed: () {
                    // NotificationService()
                    //     .showNotification(title: 'Sample title', body: 'It works!');
                    txt="null";
                     noti(txt);
                  },
                ),
            )
          ),
          
         IconButton(onPressed: (){
           noti(txt);

         }, icon:Icon(Icons.ac_unit))
        ],
      ),
    );
  }
}


noti(String txt){

       if(txt != "null"){
      NotificationService().showNotification(title: 'Sample title', body: 'It works!');
  }


}

