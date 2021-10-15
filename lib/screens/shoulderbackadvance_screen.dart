import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFShoulderBackAdvanceScreen extends StatelessWidget {
  const HFShoulderBackAdvanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: "SHOULDER & BACK ADVANCE"),
      body: ListView.builder(
          itemCount: HFShoulderBackAdvance.data.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFShoulderBackAdvance.data[index].imagePath,
                workoutTitle: HFShoulderBackAdvance.data[index].workoutTitle,
                counts: HFShoulderBackAdvance.data[index].counts);
          }),
    );
  }
}
