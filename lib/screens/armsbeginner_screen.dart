import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFArmsBeginnerScreen extends StatelessWidget {
  const HFArmsBeginnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(
        title: "ARMS BEGINNER",
      ),
      body: ListView.builder(
          itemCount: HFArmsBeginner.data.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFArmsBeginner.data[index].imagePath,
                workoutTitle: HFArmsBeginner.data[index].workoutTitle,
                counts: HFArmsBeginner.data[index].counts);
          }),
    );
  }
}
