import 'dart:io';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homefit/notifications.dart';
import 'package:homefit/screens/screen.dart';
import 'package:homefit/utilities.dart';
import 'package:homefit/widgets/constants/constant.dart';
import 'package:homefit/widgets/widgets.dart';
import 'package:intl/intl.dart';

class HFHomeScreen extends StatefulWidget {
  const HFHomeScreen({Key? key}) : super(key: key);

  @override
  State<HFHomeScreen> createState() => _HFHomeScreenState();
}

class _HFHomeScreenState extends State<HFHomeScreen> {
  @override
  void initState() {
    super.initState();

    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Allow Notifications'),
            content: Text('Our app would like to send you notifications'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Don\'t Allow',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () => AwesomeNotifications()
                      .requestPermissionToSendNotifications()
                      .then((_) => Navigator.pop(context)),
                  child: Text(
                    'Allow',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
        );
      }
    });

    AwesomeNotifications().actionStream.listen((notification) {
      if (notification.channelKey == 'basic_channel' && Platform.isIOS) {
        AwesomeNotifications().getGlobalBadgeCounter().then(
              (value) =>
                  AwesomeNotifications().setGlobalBadgeCounter(value - 1),
            );
      }

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (_) => HFWorkoutScreen(),
        ),
        (route) => route.isFirst,
      );
    });
  }

  @override
  void dispose() {
    AwesomeNotifications().actionSink.close();
    AwesomeNotifications().createdSink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DateTime dateNow = DateTime.now();
    DateFormat dateFormatter = DateFormat('EEEE, MMMM d,yyyy');
    var mediaHeight = MediaQuery.of(context).size.height;
    final String formattedDate = dateFormatter.format(dateNow);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: mediaHeight * .45,
                  decoration: BoxDecoration(
                      color: HFColor.orange,
                      image: DecorationImage(
                          alignment: Alignment.bottomRight,
                          scale: 1.5,
                          image: AssetImage("assets/images/workout.png"))),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(HFGrid.large),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: HFGrid.large),
                        HFText("HOMEFIT",
                            color: Colors.white,
                            size: HFTextSize.xxLarge,
                            weight: HFTextWeight.bold),
                        HFText(
                          formattedDate,
                          color: Colors.white,
                          size: HFTextSize.large,
                        ),
                        SizedBox(height: mediaHeight * .20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            HFHomeButtons(
                              textAlignment: MainAxisAlignment.end,
                              width: MediaQuery.of(context).size.width * .85,
                              title: "Home Workout",
                              color: HFColor.blue,
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HFWorkoutScreen()));
                              },
                            ),
                            SizedBox(
                              height: HFGrid.large,
                            ),
                            HFHomeButtons(
                                textAlignment: MainAxisAlignment.end,
                                width: MediaQuery.of(context).size.width * .85,
                                title: "Calorie Deficit Calculator",
                                color: HFColor.lightBlue,
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => HFCaloriDeficit()));
                                }),
                            SizedBox(
                              height: HFGrid.large,
                            ),
                            Row(
                              children: [
                                HFHomeButtons(
                                  textAlignment: MainAxisAlignment.center,
                                  title: "Notifications",
                                  color: HFColor.lightOrange,
                                  width:
                                      MediaQuery.of(context).size.width * .40,
                                  onTap: () async {
                                    NotificationWeekAndTime? pickedSchedule =
                                        await pickSchedule(context);

                                    if (pickedSchedule != null) {
                                      createWaterReminderNotification(
                                          pickedSchedule);
                                    }
                                  },
                                ),
                                SizedBox(
                                  width: HFGrid.large,
                                ),
                                HFHomeButtons(
                                  textAlignment: MainAxisAlignment.center,
                                  title: "About Us",
                                  color: HFColor.gray,
                                  width:
                                      MediaQuery.of(context).size.width * .40,
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => AlertDialog(
                                              title: Text('About Us'),
                                              content: Text('Welcome To HomeFit' +
                                                  '\n\nHomeFit is a Professional Educational Platform. Here we will provide you with only interesting content, which you will like very much. We\'re dedicated to providing you the best of Educational, with a focus on dependability and Workout Routines. '),
                                            ));
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
