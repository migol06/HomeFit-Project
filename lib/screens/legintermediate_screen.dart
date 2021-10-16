import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFLegsIntermediateScreen extends StatelessWidget {
  const HFLegsIntermediateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(
        title: "LEGS INTERMEDIATE",
      ),
      body: ListView.builder(
          itemCount: HFLegsIntermediate.data.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFLegsIntermediate.data[index].imagePath,
                workoutTitle: HFLegsIntermediate.data[index].workoutTitle,
                counts: HFLegsIntermediate.data[index].counts);
          }),
    );
  }
}
