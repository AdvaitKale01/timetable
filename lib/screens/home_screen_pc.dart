import 'dart:async';

import 'package:flutter/material.dart';
import 'package:timetable/models/lecture.dart';
import 'package:timetable/models/subject.dart';
import 'package:timetable/theme/app_colors.dart';
import 'package:timetable/theme/app_text_style.dart';
import 'package:url_launcher/url_launcher.dart';

final Map<int, Subject> subjects = {
  1: Subject(
    name: 'Compiler Design',
    teacher: 'Juber Mirza',
    code: 'BTCS601',
  ),
  2: Subject(
    name: 'HVPE',
    teacher: 'Anil Jain',
    code: 'BBAI501',
  ),
  3: Subject(
    name: 'Deep Learning',
    teacher: 'Sachin Chirgaiya',
    code: 'BTIBMA702',
  ),
  4: Subject(
    name: 'MongoDB and NoSQL',
    teacher: 'Priti Shukla',
    code: 'BTIBM701',
  ),
  5: Subject(
    name: 'Cyber Physical System using IoT',
    teacher: 'Ramanpreet',
    code: 'BTIBM402',
  ),
};

lecture1(Subject subject, String link) => Lecture(
    subject: subject,
    startTime: TimeOfDay(hour: 10, minute: 30),
    endTime: TimeOfDay(hour: 11, minute: 15),
    lectureLink: link);

lecture2(Subject subject, String link) => Lecture(
    subject: subject,
    startTime: TimeOfDay(hour: 11, minute: 15),
    endTime: TimeOfDay(hour: 12, minute: 00),
    lectureLink: link);

lecture3(Subject subject, String link) => Lecture(
    subject: subject,
    startTime: TimeOfDay(hour: 12, minute: 00),
    endTime: TimeOfDay(hour: 12, minute: 45),
    lectureLink: link);

lecture4(Subject subject, String link) => Lecture(
    subject: subject,
    startTime: TimeOfDay(hour: 12, minute: 45),
    endTime: TimeOfDay(hour: 13, minute: 30),
    lectureLink: link);

Subject errorSubject = Subject(
  name: 'error',
  code: 'error',
  teacher: 'error',
);
Subject freeSubject = Subject(
  name: 'free',
  code: 'free',
  teacher: 'free',
);
/*
* 1 - CD | 2 - HVPE | 3 - DL | 4 - Mongo | 5 - IoT
* */
final Map<String, List<Lecture>> timeTable = {
  'Monday': [
    lecture1(subjects[2] ?? errorSubject,
        'https://teams.microsoft.com/l/meetup-join/19%3ad61f66fb8cbd4ac9bd84c7c627d5f2cd%40thread.tacv2/1629092369848?context=%7b%22Tid%22%3a%22783ff96b-fe13-406b-b48d-45dc1853cbad%22%2c%22Oid%22%3a%225a5d1d21-8e1b-4c87-96e4-60dece011c7a%22%7d'),
    lecture2(subjects[5] ?? errorSubject, ''),
    lecture3(subjects[5] ?? errorSubject, ''),
    lecture4(subjects[4] ?? errorSubject, ''),
  ],
  'Tuesday': [
    lecture1(subjects[2] ?? errorSubject, ''),
    lecture2(subjects[1] ?? errorSubject, ''),
    lecture3(subjects[3] ?? errorSubject, ''),
    lecture4(subjects[4] ?? errorSubject,
        'https://teams.microsoft.com/l/meetup-join/19%3ad61f66fb8cbd4ac9bd84c7c627d5f2cd%40thread.tacv2/1628245373855?context=%7b%22Tid%22%3a%22783ff96b-fe13-406b-b48d-45dc1853cbad%22%2c%22Oid%22%3a%22b9a7f1a2-ebdd-4450-88f9-4a6337e9f905%22%7d'),
  ],
  'Wednesday': [
    lecture1(subjects[1] ?? errorSubject,
        'https://teams.microsoft.com/l/meetup-join/19:37cbfc140f9b44f98d3f91c35f49f547@thread.tacv2/1629263122589?context=%7B%22Tid%22:%22783ff96b-fe13-406b-b48d-45dc1853cbad%22,%22Oid%22:%225f430052-b5da-4497-9b40-2b73bf8d6099%22%7D'),
    lecture2(subjects[5] ?? errorSubject,
        'https://teams.microsoft.com/l/meetup-join/19%3a1116e3a8f3244079be27874a97532531%40thread.tacv2/1629265391653?context=%7b%22Tid%22%3a%22783ff96b-fe13-406b-b48d-45dc1853cbad%22%2c%22Oid%22%3a%22e49e4ec0-c41f-4d4c-96df-aa4a6a5cf189%22%7d'),
    lecture3(subjects[1] ?? errorSubject,
        'https://teams.microsoft.com/l/meetup-join/19%3a37cbfc140f9b44f98d3f91c35f49f547%40thread.tacv2/1628162296063?context=%7b%22Tid%22%3a%22783ff96b-fe13-406b-b48d-45dc1853cbad%22%2c%22Oid%22%3a%225f430052-b5da-4497-9b40-2b73bf8d6099%22%7d'),
    lecture4(subjects[4] ?? errorSubject, 'NA'),
  ],
  'Thursday': [
    lecture1(subjects[2] ?? errorSubject,
        'https://teams.microsoft.com/l/meetup-join/19%3ad61f66fb8cbd4ac9bd84c7c627d5f2cd%40thread.tacv2/1629092728646?context=%7b%22Tid%22%3a%22783ff96b-fe13-406b-b48d-45dc1853cbad%22%2c%22Oid%22%3a%225a5d1d21-8e1b-4c87-96e4-60dece011c7a%22%7d'),
    lecture2(subjects[5] ?? errorSubject,
        'https://teams.microsoft.com/l/meetup-join/19%3a1116e3a8f3244079be27874a97532531%40thread.tacv2/1629351256215?context=%7b%22Tid%22%3a%22783ff96b-fe13-406b-b48d-45dc1853cbad%22%2c%22Oid%22%3a%22e49e4ec0-c41f-4d4c-96df-aa4a6a5cf189%22%7d'),
    lecture3(subjects[1] ?? errorSubject, ''),
    lecture4(subjects[1] ?? errorSubject, ''),
  ],
  'Friday': [
    lecture1(subjects[2] ?? errorSubject, ''),
    lecture2(subjects[1] ?? errorSubject, ''),
    lecture3(subjects[3] ?? errorSubject, ''),
    lecture4(subjects[4] ?? errorSubject, ''),
  ],
};

class HomeScreenPC extends StatefulWidget {
  @override
  _HomeScreenPCState createState() => _HomeScreenPCState();
}

class _HomeScreenPCState extends State<HomeScreenPC> {
  int dayIndex = DateTime.now().weekday - 1;
  TimeOfDay currentTime = TimeOfDay.now();

  List days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
  ];

  String day = '';
  List<Lecture>? lectures = [];
  late Timer _timer;

  @override
  void initState() {
    dayIndex > 0 && dayIndex < 6 ? day = days[dayIndex] : day = 'Holiday';
    lectures = timeTable[day];
    _timer = Timer.periodic(Duration(seconds: 5), (_) {
      setState(() {
        currentTime = TimeOfDay.now();
      });
    });
    var tempTime = currentTime.hour * 60 + currentTime.minute;
    if (tempTime > 630 && tempTime < 810)
      _timer.tick;
    else
      print('You r free for the day');
    super.initState();
  }

  void _launchURL(url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(17.0),
              ),
              // padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      day,
                      style: AppTextStyle.h2BoldWhiteGilroy,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                    ),
                    padding: EdgeInsets.all(20.0),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          if (lectures![index].subject.name == 'error') {
                            return Icon(
                              Icons.error,
                              color: Colors.red,
                            );
                          }
                          int startMinutes =
                              (lectures![index].startTime.hour * 60) +
                                  lectures![index].startTime.minute;
                          int currentMinutes = (TimeOfDay.now().hour * 60) +
                              TimeOfDay.now().minute;
                          int endMinutes =
                              (lectures![index].endTime.hour * 60) +
                                  lectures![index].endTime.minute;

                          // print(
                          //     '$index $startMinutes < $currentMinutes < $endMinutes');
                          // print(lectures![index].lectureLink);
                          if (currentMinutes > 810) {
                            _timer.cancel();
                          }
                          return Container(
                            padding: EdgeInsets.all(20.0),
                            margin: EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              color: currentMinutes >= startMinutes &&
                                      currentMinutes < endMinutes
                                  ? Colors.green.withOpacity(0.4)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      lectures![index].subject.name,
                                      style: AppTextStyle.h5BoldBlackQuicksand,
                                    ),
                                    Text(
                                      lectures![index].subject.code,
                                      style: AppTextStyle.h5BoldBlackQuicksand,
                                    ),
                                    Text(
                                      lectures![index].subject.teacher,
                                      style: AppTextStyle.h5BoldBlackQuicksand,
                                    ),
                                  ],
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.blueAccent,
                                  ),
                                  onPressed: () {
                                    print('join lec');
                                    // _launchURL(lectures![index].lectureLink);
                                    print(lectures![index].lectureLink);
                                    _launchURL(lectures![index].lectureLink);
                                  },
                                  child: Text(
                                    'Join',
                                    style: AppTextStyle.h6BoldWhiteQuicksand,
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
