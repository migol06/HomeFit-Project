import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFChestIntermediateScreen extends StatelessWidget {
  const HFChestIntermediateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: 'CHEST INTERMEDIATE'),
      body: ListView.builder(
          itemCount: HFChestIntermediate.data.length,
          itemBuilder: (BuildContext context, int index) {
            return HFWorkout(
                workoutImage: HFChestIntermediate.data[index].imagePath,
                workoutTitle: HFChestIntermediate.data[index].workoutTitle,
                counts: HFChestIntermediate.data[index].counts);
          }),
    );
  }
}
