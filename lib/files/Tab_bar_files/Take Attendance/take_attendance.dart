import 'package:attendance_manager_system/files/Tab_bar_files/Take%20Attendance/widgets.dart';
import 'package:flutter/material.dart';

DateTime _currentDate = DateTime.now();
DateTime _selectedDate = DateTime.now();

class TakeAttendance extends StatefulWidget {
  const TakeAttendance({super.key});

  @override
  State<TakeAttendance> createState() => _TakeAttendanceState();
}

class _TakeAttendanceState extends State<TakeAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(
        child: CalendarDatePicker(
            initialDate: _currentDate,
            firstDate: DateTime(2022, 1, 1),
            lastDate: DateTime(2025, 12, 12),
            onDateChanged: (selectedDate) {
              setState(() {
                _selectedDate = selectedDate;
              });
            }),
      ),
      const SizedBox(
        height: 70,
      ),
      SizedBox(
          width: MediaQuery.of(context).size.width / 1.2,
          child: ElevatedButton(
              onPressed: () {}, child: const Text('Take Attendance'))),
    ]));
  }
}
