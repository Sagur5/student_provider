// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_provider/Provider/student_provider.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold widget is the top level container for a
    // MaterialApp. It provides the background color and the body of
    // the app.
    return Scaffold(
      appBar: AppBar(
        // Title of the app bar
        title: Text('Student List'),
      ),
      body: Consumer<StudentProvider>(
        builder: (context, value, child) {
          // The list of students is displayed in a ListView
          return ListView.builder(
            // Number of items in the list
            itemCount: value.studentList.length,
            // Function to build each item in the list
            itemBuilder: (context, index) {
              // Each item in the list is a Card
              return Card(
                // The Card contains a ListTile
                child: ListTile(
                  // Title of the ListTile is the name of the student
                  title: Text('Name: ${value.studentList[index].name}'),
                  // Subtitle of the ListTile is the roll of the student and
                  // the marks of each subject
                  subtitle: Text(
                    'Roll: ${value.studentList[index].roll}\nBangla: ${value.studentList[index].bm}\nEnglish: ${value.studentList[index].em}\nMath: ${value.studentList[index].mm}\nTotal Marks:${value.studentList[index].total}\nAvarage Marks:${(value.studentList[index].am).floorToDouble()} ',
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
