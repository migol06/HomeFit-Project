import 'package:flutter/material.dart';
import 'package:homefit/widgets/constants/grid.dart';
import 'package:homefit/widgets/text.dart';
import 'constants/constant.dart';

class HFHomeButtons extends StatelessWidget {
  final String category;
  final String title;
  final VoidCallback? onTap;
  final String color;

  const HFHomeButtons({
    Key? key,
    required this.category,
    required this.title,
    required this.color,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width * .85,
          decoration: BoxDecoration(
              color: HFColor.blue,
              borderRadius: BorderRadius.all(Radius.circular(HFGrid.small)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 8), blurRadius: 4, color: HFColor.blue)
              ]),
          child: Padding(
            padding: const EdgeInsets.all(HFGrid.medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HFText(
                  title,
                  color: Colors.white,
                  weight: HFTextWeight.bold,
                  size: HFTextSize.large,
                ),
                SizedBox(
                  height: HFGrid.xxxxxLarge,
                )
              ],
            ),
          ),
        ));
  }
}
