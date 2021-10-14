import 'package:flutter/material.dart';
import 'package:homefit/widgets/constants/color.dart';
import 'package:homefit/widgets/constants/constant.dart';
import 'package:homefit/widgets/constants/grid.dart';

import 'widgets/widgets.dart';

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
                  HFWorkoutButtons(category: "Beginner", title: "Abs Beginner"),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                      category: "Beginner", title: "Chest Beginner"),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                      category: "Beginner", title: "Arms Beginner"),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                      category: "Beginner", title: "Legs Beginner"),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                      category: "Beginner",
                      title: "Shoulder and Back Beginner"),
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
                      category: "Intermediate", title: "Abs Intermediate"),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                      category: "Intermediate", title: "Chest Intermediate"),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                      category: "Intermediate", title: "Arms Intermediate"),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                      category: "Intermediate", title: "Legs Intermediate"),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                      category: "Beginner",
                      title: "Shoulder and Back Intermediate"),
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
                  HFWorkoutButtons(category: "Advance", title: "Abs Advance"),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(category: "Advance", title: "Chest Advance"),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(category: "Advance", title: "Arms Advance"),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(category: "Advance", title: "Legs Advance"),
                  SizedBox(
                    height: HFGrid.medium,
                  ),
                  HFWorkoutButtons(
                      category: "Advance", title: "Shoulder and Back Advance"),
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
