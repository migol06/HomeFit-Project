import "package:flutter/material.dart";
import 'package:homefit/widgets/constants/constant.dart';
import 'package:homefit/widgets/constants/grid.dart';
import 'package:homefit/widgets/widgets.dart';

class HFWidgetScreen extends StatefulWidget {
  const HFWidgetScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HFWidgetScreen> createState() => _HFWidgetScreenState();
}

class _HFWidgetScreenState extends State<HFWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          HFText.title("Homefit"),
          SizedBox(height: HFGrid.small),
          HFText(
            'This is a demo Text',
            color: HFColor.scorpion,
            size: HFTextSize.small,
            weight: HFTextWeight.bold,
            style: HFTextStyle.normal,
          ),
          SizedBox(
            height: HFGrid.large,
          ),
          HFText(
            'This is a demo2 Text',
            color: HFColor.orange,
            size: HFTextSize.large,
            weight: HFTextWeight.extraBold,
            style: HFTextStyle.normal,
          ),
          SizedBox(
            height: HFGrid.large,
          ),
          HFText(
            'This is a demo2 Text',
            color: HFColor.blue,
            size: HFTextSize.large,
            weight: HFTextWeight.extraBold,
            style: HFTextStyle.normal,
          ),
          SizedBox(
            height: HFGrid.large,
          ),
          HFAppBar(
            title: "Home Workout",
          ),
          SizedBox(
            height: HFGrid.large,
          ),
          HFAppBar(
            title: "ABS BEGINNER",
          ),
          SizedBox(
            height: HFGrid.large,
          ),
          HFWorkoutButtons(
            category: "Beginner",
            title: "ABS Beginner",
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("This is a demo"),
              ));
            },
          ),
          SizedBox(
            height: HFGrid.large,
          ),
          HFWorkoutButtons(category: "Intermediate", title: "ABS Intermediate"),
          SizedBox(
            height: HFGrid.large,
          ),
          HFWorkoutButtons(category: "Advance", title: "ABS Advance"),
          SizedBox(
            height: HFGrid.large,
          ),
          HFCalories(calorieTitle: "Maintain Weight", calorieCalc: 0),
          SizedBox(
            height: HFGrid.large,
          ),
          HFCalories(calorieTitle: "Mild Weight loss", calorieCalc: 0),
          SizedBox(
            height: HFGrid.large,
          ),
          HFCalories(calorieTitle: "Extreme Weight loss", calorieCalc: 0),
          SizedBox(
            height: HFGrid.large,
          ),
          HFCalories(calorieTitle: "Weight loss", calorieCalc: 0),
          SizedBox(
            height: HFGrid.large,
          ),
          HFHomeButtons(
            textAlignment: MainAxisAlignment.center,
            title: "Home Workout",
            color: HFColor.blue,
            width: MediaQuery.of(context).size.width * .85,
          ),
          SizedBox(
            height: HFGrid.large,
          ),
          HFHomeButtons(
            textAlignment: MainAxisAlignment.center,
            title: "Calorie",
            color: HFColor.lightBlue,
            width: MediaQuery.of(context).size.width * .85,
          ),
          SizedBox(
            height: HFGrid.large,
          ),
          HFWorkout(
              workoutImage: "assets/images/abs_workout/abdominalcrunches.jpg",
              workoutTitle: "Abdominal Crunches",
              counts: "16 reps"),
          SizedBox(height: HFGrid.xxLarge)
        ])),
      ),
    );
  }
}
