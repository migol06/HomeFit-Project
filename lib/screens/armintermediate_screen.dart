import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFArmsIntermediateScreen extends StatelessWidget {
  const HFArmsIntermediateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(
        title: "ARMS INTERMEDIATE",
      ),
      body: ListView.builder(
          itemCount: HFArmsIntermediate.data.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFArmsIntermediate.data[index].imagePath,
                workoutTitle: HFArmsIntermediate.data[index].workoutTitle,
                counts: HFArmsIntermediate.data[index].counts);
          }),
    );
  }
}
