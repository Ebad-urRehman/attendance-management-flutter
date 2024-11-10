import 'package:attendance_manager_system/files/Add%20Class/class_tile.dart';
import 'package:flutter/material.dart';

class AddClass extends StatelessWidget {
  const AddClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.add)),
        appBar: AppBar(
          title: const Text('Attendance Manager'),
        ),
        body: ListView.builder(
          itemCount: subjectsDetailedList.length,
          itemBuilder: (context, index) {
            return ClassTile(subjectMap: subjectsDetailedList[index]);
          },
        ));
  }
}

List<Map> subjectsDetailedList = [
  {
    'Subject Name': 'Programming Fundamentals',
    'Date': 'Spring 2025',
    'Classes': '12',
  },
  {
    'Subject Name': 'Artificial Intelligence',
    'Date': 'Spring 2024',
    'Classes': '40',
  },
  {
    'Subject Name': 'Mobile Application Development',
    'Date': 'Spring 2025',
    'Classes': '45',
  },
];
