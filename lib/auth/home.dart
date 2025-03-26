import 'package:dairy_care/pages/IntroPage.dart';
import 'package:flutter/material.dart';
import 'package:dairy_care/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("FlutterPhone Auth"),
        actions: [
          IconButton(
            onPressed: () {
              ap.userSignOut().then(
                    (value) =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IntroPage(),
                      ),
                    ),
              );
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.purple,
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              ap.userModel.profilePic),
                          radius: 50,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          ap.userModel.name,
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Text(
                          ap.userModel.phoneNumber,
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Text(
                          ap.userModel.email,
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Text(
                          ap.userModel.bio,
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        const SizedBox(height: 20.0),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

