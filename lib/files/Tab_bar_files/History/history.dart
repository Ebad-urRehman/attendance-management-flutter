import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return TimelineTile(date: 'Date', status: 'Status');
  }
}

class TimelineTile extends StatelessWidget {
  final String date;
  final String status;

  const TimelineTile({required this.date, required this.status});

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      builder: TimelineTileBuilder.fromStyle(
        contentsAlign: ContentsAlign.alternating,
        contentsBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(
              top: 24.0, bottom: 24.0, right: 24.0, left: 0),
          child: Text('Timeline Event $index'),
        ),
        itemCount: 10,
      ),
    );
  }
}
