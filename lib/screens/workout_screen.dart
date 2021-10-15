import 'package:flutter/material.dart';
import 'package:homefit/screens/abs_screen.dart';
import 'package:homefit/screens/chest_screen.dart';
import 'package:homefit/screens/widget_screen.dart';
import 'package:homefit/widgets/constants/color.dart';
import 'package:homefit/widgets/constants/constant.dart';
import 'package:homefit/widgets/constants/grid.dart';

import '../widgets/widgets.dart';

class HFWorkoutScreen extends StatelessWidget {
  const HFWorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: 'HOME WORKOUT'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(HFGrid.large),
              child: HFText(
                'BEGINNER',
                color: HFColor.plantation,
                size: HFTextSize.xxLarge,
                weight: HFTextWeight.bold,
              ),
            ),
            Center(
              child: Column(
                children: [
                  HFWorkoutButtons(
                    category: "Beginner",
                    title: "Abs Beginner",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFAbsBeginnerScreen()));
                    },
                  ),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                    category: "Beginner",
                    title: "Chest Beginner",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFChestScreen()));
                    },
                  ),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                    category: "Beginner",
                    title: "Arms Beginner",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFWidgetScreen(title: "Test")));
                    },
                  ),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                    category: "Beginner",
                    title: "Legs Beginner",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFWidgetScreen(title: "Test")));
                    },
                  ),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                    category: "Beginner",
                    title: "Shoulder and Back Beginner",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFWidgetScreen(title: "Test")));
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(HFGrid.large),
              child: HFText(
                'INTERMEDIATE',
                color: HFColor.plantation,
                size: HFTextSize.xxLarge,
                weight: HFTextWeight.bold,
              ),
            ),
            Center(
              child: Column(
                children: [
                  HFWorkoutButtons(
                    category: "Intermediate",
                    title: "Abs Intermediate",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFWidgetScreen(title: "Test")));
                    },
                  ),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                    category: "Intermediate",
                    title: "Chest Intermediate",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFWidgetScreen(title: "Test")));
                    },
                  ),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                    category: "Intermediate",
                    title: "Arms Intermediate",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFWidgetScreen(title: "Test")));
                    },
                  ),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                    category: "Intermediate",
                    title: "Legs Intermediate",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFWidgetScreen(title: "Test")));
                    },
                  ),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                    category: "Beginner",
                    title: "Shoulder and Back Intermediate",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFWidgetScreen(title: "Test")));
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(HFGrid.large),
              child: HFText(
                'ADVANCE',
                color: HFColor.plantation,
                size: HFTextSize.xxLarge,
                weight: HFTextWeight.bold,
              ),
            ),
            Center(
              child: Column(
                children: [
                  HFWorkoutButtons(
                    category: "Advance",
                    title: "Abs Advance",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFWidgetScreen(title: "Test")));
                    },
                  ),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                    category: "Advance",
                    title: "Chest Advance",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFWidgetScreen(title: "Test")));
                    },
                  ),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                    category: "Advance",
                    title: "Arms Advance",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFWidgetScreen(title: "Test")));
                    },
                  ),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                    category: "Advance",
                    title: "Legs Advance",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFWidgetScreen(title: "Test")));
                    },
                  ),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                    category: "Advance",
                    title: "Shoulder and Back Advance",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HFWidgetScreen(title: "Test")));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: HFGrid.xxxLarge,
            )
          ],
        ),
      ),
    );
  }
}
