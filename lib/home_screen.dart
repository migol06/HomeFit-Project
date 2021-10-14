import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homefit/widgets/constants/constant.dart';
import 'package:homefit/widgets/constants/grid.dart';
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
                        alignment: Alignment.bottomCenter,
                        scale: 1.5,
                        image: AssetImage("assets/images/workout.png"))),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(HFGrid.large),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                          color: HFColor.lightBlue, shape: BoxShape.circle),
                      child: Icon(
                        Icons.menu_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SafeArea(
                  child: Padding(
                padding: const EdgeInsets.all(HFGrid.large),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HFText("HOMEFIT",
                        color: Colors.white,
                        size: HFTextSize.xxLarge,
                        weight: HFTextWeight.bold),
                    HFText(
                      formattedDate,
                      color: Colors.white,
                      size: HFTextSize.large,
                    ),
                  ],
                ),
              )),
              _getHomeButtons()
            ],
          ),
        ],
      ),
    );
  }

  Widget _getHomeButtons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HFHomeButtons(title: "Home Workout", color: HFColor.blue),
        SizedBox(
          height: HFGrid.large,
        ),
        HFHomeButtons(title: "Calorie Deficit", color: HFColor.lightBlue)
      ],
    );
  }
}
