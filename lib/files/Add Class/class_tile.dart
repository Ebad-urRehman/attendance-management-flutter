import 'package:attendance_manager_system/files/Tab_bar_files/tab_browser.dart';
import 'package:flutter/material.dart';

class ClassTile extends StatelessWidget {
  Map subjectMap = {};
  ClassTile({super.key, required this.subjectMap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    TabBrowser(subjectName: subjectMap['Subject Name'])));
      },
      child: ListTile(
        title: Text(subjectMap['Subject Name']),
        subtitle: Text('Date : ${subjectMap['Date']}'),
        trailing: Column(
          children: [Text(subjectMap['Classes']), Text('Classes')],
        ),
      ),
    );
  }
}
