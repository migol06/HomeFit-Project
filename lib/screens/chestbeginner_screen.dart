import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFChestBeginnerScreen extends StatelessWidget {
  const HFChestBeginnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: 'Chest Beginner'),
      body: ListView.builder(
          itemCount: HFChestBeginner.chest.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFChestBeginner.chest[index].imagePath,
                workoutTitle: HFChestBeginner.chest[index].workoutTitle,
                counts: HFChestBeginner.chest[index].counts);
          }),
    );
  }
}
