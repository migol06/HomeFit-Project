import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homefit/screens/screen.dart';
import 'package:homefit/widgets/constants/constant.dart';
import 'package:homefit/widgets/widgets.dart';
import 'package:intl/intl.dart';

class HFHomeScreen extends StatelessWidget {
  const HFHomeScreen({Key? key}) : super(key: key);

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
                                    width: MediaQuery.of(context).size.width *
                                        .40),
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
