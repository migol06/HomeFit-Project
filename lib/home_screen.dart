import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homefit/screen.dart';
import 'package:homefit/widgets/constants/constant.dart';
import 'package:homefit/widgets/widgets.dart';
import 'package:intl/intl.dart';

class HFHomeScreen extends StatelessWidget {
  const HFHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime dateNow = DateTime.now();
    DateFormat dateFormatter = DateFormat('EEEE, MMMM d,yyyy');
    final String formattedDate = dateFormatter.format(dateNow);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .45,
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
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                                color: HFColor.lightBlue,
                                shape: BoxShape.circle),
                            child: PopupMenuButton(
                                icon: Icon(
                                  Icons.more_vert_outlined,
                                  color: Colors.white,
                                ),
                                itemBuilder: (context) => [
                                      PopupMenuItem(
                                        child: ListTile(
                                          title: Text('About us'),
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (_) => AlertDialog(
                                                      title: Text('About Us'),
                                                      content: Text(
                                                          'Welcome To HomeFit' +
                                                              '\n\nHomeFit is a Professional Educational Platform. Here we will provide you with only interesting content, which you will like very much. We\'re dedicated to providing you the best of Educational, with a focus on dependability and Workout Routines. '),
                                                    ));
                                          },
                                        ),
                                      )
                                    ])),
                      ),
                      HFText("HOMEFIT",
                          color: Colors.white,
                          size: HFTextSize.xxLarge,
                          weight: HFTextWeight.bold),
                      HFText(
                        formattedDate,
                        color: Colors.white,
                        size: HFTextSize.large,
                      ),
                      SizedBox(height: HFGrid.xxxxxxxLarge),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          HFHomeButtons(
                            title: "Home Workout",
                            color: HFColor.blue,
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      HFWidgetScreen(title: "Test")));
                            },
                          ),
                          SizedBox(
                            height: HFGrid.large,
                          ),
                          HFHomeButtons(
                              title: "Calorie Deficit Calculator",
                              color: HFColor.lightBlue,
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        HFWidgetScreen(title: "Test")));
                              })
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
