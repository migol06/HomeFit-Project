import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFChestAdvanceScreen extends StatelessWidget {
  const HFChestAdvanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: 'Chest Advance'),
      body: ListView.builder(
          itemCount: HFChestAdvance.data.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFChestAdvance.data[index].imagePath,
                workoutTitle: HFChestAdvance.data[index].workoutTitle,
                counts: HFChestAdvance.data[index].counts);
          }),
    );
  }
}
