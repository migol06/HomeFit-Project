import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFShoulderBackIntermediateScreen extends StatelessWidget {
  const HFShoulderBackIntermediateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: "SHOULDER & BACK INTERMEDIATE"),
      body: ListView.builder(
          itemCount: HFShoulderBackIntermediate.data.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFShoulderBackIntermediate.data[index].imagePath,
                workoutTitle:
                    HFShoulderBackIntermediate.data[index].workoutTitle,
                counts: HFShoulderBackIntermediate.data[index].counts);
          }),
    );
  }
}
