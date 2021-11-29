import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:homefit/screens/screen.dart';

import 'widgets/constants/constant.dart';

void main() {
  AwesomeNotifications().initialize('resource://drawable/logo', [
    NotificationChannel(
      channelKey: 'scheduled_channel',
      channelName: 'Scheduled Notifications',
      defaultColor: HFColor.orange,
      locked: true,
      importance: NotificationImportance.High,
      channelDescription: '',
    ),
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomeFit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HFOnBoarding(),
    );
  }
}
