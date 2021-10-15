import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFShoulderBackBeginnerScreen extends StatelessWidget {
  const HFShoulderBackBeginnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: "SHOULDER & BACK BEGINNER"),
      body: ListView.builder(
          itemCount: HFShoulderBackBeginner.data.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFShoulderBackBeginner.data[index].imagePath,
                workoutTitle: HFShoulderBackBeginner.data[index].workoutTitle,
                counts: HFShoulderBackBeginner.data[index].counts);
          }),
    );
  }
}
