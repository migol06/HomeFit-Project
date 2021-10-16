import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFChestBeginnerScreen extends StatelessWidget {
  const HFChestBeginnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: 'CHEST BEGINNER'),
      body: ListView.builder(
          itemCount: HFChestBeginner.data.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFChestBeginner.data[index].imagePath,
                workoutTitle: HFChestBeginner.data[index].workoutTitle,
                counts: HFChestBeginner.data[index].counts);
          }),
    );
  }
}
