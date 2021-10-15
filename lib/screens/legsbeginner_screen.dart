import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFLegsBeginnerScreen extends StatelessWidget {
  const HFLegsBeginnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: "LEGS BEGINNER"),
      body: ListView.builder(
          itemCount: HFLegsBeginner.data.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFLegsBeginner.data[index].imagePath,
                workoutTitle: HFLegsBeginner.data[index].workoutTitle,
                counts: HFLegsBeginner.data[index].counts);
          }),
    );
  }
}
