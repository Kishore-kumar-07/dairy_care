import 'package:dairy_care/pages/Home_Page.dart';
import 'package:dairy_care/pages/IntroPage.dart';
import 'package:dairy_care/provider/auth_provider.dart';
import 'package:dairy_care/service/notification_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'languages/langstrings.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  await Hive.initFlutter();
  await Firebase.initializeApp(

        options: FirebaseOptions(
            apiKey: "AIzaSyD4LyEMqbR-dlgEW31Kz9ylEAsS1ys-qKQ",
            authDomain: "dairycare-74dc9.firebaseapp.com",
            //databaseURL: "",
            projectId:"dairycare-74dc9" ,
            storageBucket: "dairycare-74dc9.appspot.com",
            messagingSenderId:"1064179039447" ,
            appId: "1:1064179039447:android:0030e2d05c0c905fb5c492"
        ),

  );

  var todo_db = await Hive.openBox('mybox');
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: GetMaterialApp(
        theme:ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        locale: Locale('en','US'),
        translations: langstring(),
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
        routes: {
          '/HomePage':(context)=>const HomePage(),
        },
      ),
    );
  }
}
