import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFAbsBeginnerScreen extends StatelessWidget {
  const HFAbsBeginnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: "ABS BEGINNER"),
      body: ListView.builder(
          itemCount: HFAbsBeginner.abs.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFAbsBeginner.abs[index].imagePath,
                workoutTitle: HFAbsBeginner.abs[index].workoutTitle,
                counts: HFAbsBeginner.abs[index].counts);
          }),
    );
  }
}
