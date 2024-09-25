// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_provider/Provider/student_provider.dart';
import 'package:student_provider/Ui/home.dart';


/// A widget for inputting student data
class InputData extends StatelessWidget {
  /// Create an instance of [InputData]
  const InputData({super.key});
  @override
  Widget build(BuildContext context) {
    // Create controllers for TextFields
    final nameController = TextEditingController();
    final rollController = TextEditingController();
    final banglaController = TextEditingController();
    final englishController = TextEditingController();
    final mathController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Input Student Data'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // TextField for Student Name
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Student Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // TextField for Roll
              TextField(
                controller: rollController,
                decoration: InputDecoration(
                  labelText: 'Roll',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // TextField for Bangla
              TextField(
                controller: banglaController,
                decoration: InputDecoration(
                  labelText: 'Bangla',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // TextField for English
              TextField(
                controller: englishController,
                decoration: InputDecoration(
                  labelText: 'English',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // TextField for Math
              TextField(
                controller: mathController,
                decoration: InputDecoration(
                  labelText: 'Math',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // ElevatedButton to save data
              ElevatedButton(
                onPressed: () {
                  // Check if all fields are filled
                  if (nameController.text.isEmpty ||
                      rollController.text.isEmpty ||
                      banglaController.text.isEmpty ||
                      englishController.text.isEmpty ||
                      mathController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Please fill all fields'),
                      backgroundColor: Colors.red,
                    ));
                    return;
                  }

                  // Get values from controllers
                  final name = nameController.text;
                  final roll = rollController.text;
                  final bm = int.parse(banglaController.text);
                  final em = int.parse(englishController.text);
                  final mm = int.parse(mathController.text);

                  // Add student to Provider
                  context.read<StudentProvider>().addStudent(
                      name: name, roll: roll, bm: bm, em: em, mm: mm);

                  // Clear controllers
                  nameController.clear();
                  rollController.clear();
                  banglaController.clear();
                  englishController.clear();
                  mathController.clear();

                  // Navigate to Home
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Home(),
                  ));
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
