import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFArmsAdvanceScreen extends StatelessWidget {
  const HFArmsAdvanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(
        title: "ARMS ADVANCE",
      ),
      body: ListView.builder(
          itemCount: HFArmsAdvance.data.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFArmsAdvance.data[index].imagePath,
                workoutTitle: HFArmsAdvance.data[index].workoutTitle,
                counts: HFArmsAdvance.data[index].counts);
          }),
    );
  }
}
