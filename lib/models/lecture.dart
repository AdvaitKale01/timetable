import 'package:flutter/material.dart';
import 'package:timetable/models/subject.dart';

class Lecture {
  final Subject subject;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final String lectureLink;

  Lecture({
    required this.subject,
    required this.startTime,
    required this.endTime,
    required this.lectureLink,
  });
}
