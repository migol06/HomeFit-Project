import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFLegsAdvanceScreen extends StatelessWidget {
  const HFLegsAdvanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: "LEGS ADVANCE"),
      body: ListView.builder(
          itemCount: HFLegsAdvance.data.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFLegsAdvance.data[index].imagePath,
                workoutTitle: HFLegsAdvance.data[index].workoutTitle,
                counts: HFLegsAdvance.data[index].counts);
          }),
    );
  }
}
