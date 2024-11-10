import 'package:attendance_manager_system/files/Tab_bar_files/Students/widgets.dart';
import 'package:flutter/material.dart';

class Students extends StatelessWidget {
  const Students({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: studentDetailedList.length,
      itemBuilder: (context, index) {
        return StudentTile(studentDetails: studentDetailedList[index]);
      },
    ));
  }
}

List<Map> studentDetailedList = [
  {
    'Student Name': 'Ibrar',
    'Percentage': '99%',
  },
  {
    'Student Name': 'Zeeshan',
    'Percentage': '99%',
  },
  {
    'Student Name': 'Hashir',
    'Percentage': '85%',
  },
];
