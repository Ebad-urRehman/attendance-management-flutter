import 'package:attendance_manager_system/files/Tab_bar_files/History/history.dart';
import 'package:attendance_manager_system/files/Tab_bar_files/Students/students.dart';
import 'package:attendance_manager_system/files/Tab_bar_files/Take%20Attendance/take_attendance.dart';
import 'package:flutter/material.dart';

class TabBrowser extends StatefulWidget {
  String subjectName;
  TabBrowser({super.key, required this.subjectName});

  @override
  State<TabBrowser> createState() => _TabBrowserState();
}

class _TabBrowserState extends State<TabBrowser> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                  title: Text(widget.subjectName),
                  bottom: const TabBar(
                    tabs: [
                      Tab(text: 'ATTENDANCE'),
                      Tab(text: 'STUDENTS'),
                      Tab(text: 'HISTORY')
                    ],
                  )),
              body: const TabBarView(
                children: [TakeAttendance(), Students(), History()],
              ))),
    );
  }
}
