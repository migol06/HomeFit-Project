import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homefit/data/data.dart';
import 'package:homefit/widgets/widgets.dart';

class HFChestScreen extends StatelessWidget {
  const HFChestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: 'Chest Beginner'),
      body: ListView.builder(
          itemCount: HFChestShit.sample.length,
          itemBuilder: (BuildContext context, int index) {
            return HFText(HFChestShit.sample[index].label);
          }),
    );
  }
}
