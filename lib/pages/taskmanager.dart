import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../data/localdb.dart';
import '../utils/tasktilles.dart';


class TaskManager extends StatefulWidget {
  const TaskManager({super.key});

  @override
  State<TaskManager> createState() => _HomePageState();
}

class _HomePageState extends State<TaskManager> {
  final _myBox = Hive.box('mybox');
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {

    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {

      db.loadData();
    }

    super.initState();
  }


  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F0E5),
      appBar: AppBar(
        title: Center(child: Text('TASK MANAGER',style: GoogleFonts.ubuntu(color: Colors.black),)),
        backgroundColor: Color(0xffF8F0E5),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.toDoList[index][0],
            taskCompleted: db.toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
