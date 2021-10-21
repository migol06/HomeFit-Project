import 'package:flutter/material.dart';
import 'package:homefit/widgets/constants/grid.dart';
import 'package:homefit/widgets/text.dart';

import 'constants/constant.dart';

class HFCalories extends StatefulWidget {
  final String calorieTitle;
  final double calorieCalc;
  const HFCalories(
      {Key? key, required this.calorieTitle, required this.calorieCalc})
      : super(key: key);

  @override
  _HFCaloriesState createState() => _HFCaloriesState();
}

class _HFCaloriesState extends State<HFCalories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HFColor.orange,
      width: MediaQuery.of(context).size.width * .60,
      child: Padding(
        padding: const EdgeInsets.all(HFGrid.medium),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HFText(widget.calorieTitle,
                color: Colors.white, size: HFTextSize.medium),
            Spacer(),
            HFText(widget.calorieCalc.toStringAsFixed(2) + " cal/day",
                color: Colors.white, size: HFTextSize.medium)
          ],
        ),
      ),
    );
  }
}
