import 'package:flutter/material.dart';
import 'package:homefit/widgets/appbar.dart';
import 'package:homefit/widgets/constants/constant.dart';
import 'package:homefit/widgets/widgets.dart';

class HFAbsBeginnerScreen extends StatelessWidget {
  const HFAbsBeginnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: "ABS BEGINNER"),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: HFGrid.large,
              ),
              HFWorkout(
                  workoutImage: "assets/images/abs_workout/jumpingjacks.jpg",
                  workoutTitle: "Jumping Jacks",
                  counts: "20 secs"),
              SizedBox(
                height: HFGrid.large,
              ),
              HFWorkout(
                  workoutImage:
                      "assets/images/abs_workout/abdominalcrunches.jpg",
                  workoutTitle: "Abdominal Crunches",
                  counts: "16 reps"),
              SizedBox(
                height: HFGrid.large,
              ),
              HFWorkout(
                  workoutImage: "assets/images/abs_workout/russiantwist.jpg",
                  workoutTitle: "Russian twist",
                  counts: "20 reps"),
              SizedBox(
                height: HFGrid.large,
              ),
              HFWorkout(
                  workoutImage: "assets/images/abs_workout/mountainclimber.jpg",
                  workoutTitle: "Mountain Climber",
                  counts: "16 reps"),
              SizedBox(
                height: HFGrid.large,
              ),
              HFWorkout(
                  workoutImage: "assets/images/abs_workout/heeltouch.jpg",
                  workoutTitle: "Heel Touch",
                  counts: "20 reps"),
              SizedBox(
                height: HFGrid.large,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
