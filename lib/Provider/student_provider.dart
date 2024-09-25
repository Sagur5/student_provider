import 'package:flutter/material.dart';

import 'package:student_provider/models/student_model.dart';

class StudentProvider extends ChangeNotifier {
  List<StudentModel> studentList = [];

  /// Adds a new student to the list.
  ///
  /// [name] is the name of the student.
  ///
  /// [roll] is the roll number of the student.
  ///
  /// [bm] is the Bangla mark of the student.
  ///
  /// [em] is the English mark of the student.
  ///
  /// [mm] is the Math mark of the student.
  ///
  /// This method also notifies the listeners after adding the student.
  void addStudent({
    required String name,
    required String roll,
    required int bm,
    required int em,
    required int mm,
  }) {
    final studemtm = StudentModel(
        name: name,
        roll: roll,
        bm: bm,
        em: em,
        mm: mm,
        total: bm + em + mm,
        am: (bm + em + mm) / 3);

    studentList.add(studemtm);
  }
}
