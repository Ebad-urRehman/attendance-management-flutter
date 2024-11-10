import 'package:attendance_manager_system/files/Tab_bar_files/tab_browser.dart';
import 'package:flutter/material.dart';

class StudentTile extends StatelessWidget {
  Map studentDetails = {};
  StudentTile({super.key, required this.studentDetails});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    TabBrowser(subjectName: studentDetails['Student Name'])));
      },
      child: ListTile(
          title: Text(studentDetails['Student Name']),
          trailing: Text(studentDetails['Percentage'])),
    );
  }
}
