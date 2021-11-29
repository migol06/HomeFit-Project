import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:homefit/screens/screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/constants/constant.dart';

int? isViewed;
Future<void> main() async {
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

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = await prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  print('initScreen $isViewed');
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
      initialRoute: isViewed == 0 || isViewed == null ? "first" : "/",
      routes: {
        '/': (context) => HFHomeScreen(),
        "first": (context) => HFOnBoarding()
      },
    );
    // home: isViewed != 0 ? const HFOnBoarding() : HFHomeScreen());
  }
}
