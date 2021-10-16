import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFAbsIntermediateScreen extends StatelessWidget {
  const HFAbsIntermediateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: "ABS INTERMEDIATE"),
      body: ListView.builder(
          itemCount: HFAbsIntermediate.data.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFAbsIntermediate.data[index].imagePath,
                workoutTitle: HFAbsIntermediate.data[index].workoutTitle,
                counts: HFAbsIntermediate.data[index].counts);
          }),
    );
  }
}
