import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homefit/widgets/constants/constant.dart';
import 'package:homefit/widgets/constants/grid.dart';
import 'package:homefit/widgets/text.dart';

class HFWorkout extends StatelessWidget {
  final String workoutImage;
  final String workoutTitle;
  final String counts;

  const HFWorkout(
      {Key? key,
      required this.workoutImage,
      required this.workoutTitle,
      required this.counts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    return Container(
      height: MediaQuery.of(context).size.height * .15,
      width: mediaWidth * .85,
      color: HFColor.gray,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            _getImage(),
            SizedBox(width: HFGrid.small),
            _getWorkoutName()
          ],
        ),
      ),
    );
  }

  Widget _getImage() {
    return Container(
        width: HFGrid.xxxxxxxLarge,
        height: HFGrid.xxxxxxxxLarge,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(workoutImage))));
  }

  Widget _getWorkoutName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: HFGrid.large,
        ),
        HFText(
          workoutTitle.toUpperCase(),
          size: HFTextSize.large,
          weight: HFTextWeight.bold,
          color: Colors.white,
        ),
        HFText(
          counts,
          size: HFTextSize.medium,
          color: Colors.white,
        )
      ],
    );
  }
}