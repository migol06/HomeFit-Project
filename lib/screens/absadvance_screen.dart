import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFAbsAdvanceScreen extends StatelessWidget {
  const HFAbsAdvanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: "ABS ADVANCE"),
      body: ListView.builder(
          itemCount: HFAbsAdvance.data.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFAbsAdvance.data[index].imagePath,
                workoutTitle: HFAbsAdvance.data[index].workoutTitle,
                counts: HFAbsAdvance.data[index].counts);
          }),
    );
  }
}
