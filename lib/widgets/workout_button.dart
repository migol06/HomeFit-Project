import 'package:flutter/material.dart';
import 'package:homefit/widgets/constants/grid.dart';
import 'package:homefit/widgets/text.dart';
import 'constants/constant.dart';

class HFWorkoutButtons extends StatelessWidget {
  final String category;
  final String title;
  final VoidCallback? onTap;

  const HFWorkoutButtons({
    Key? key,
    required this.category,
    required this.title,
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
                  offset: Offset(0, 8), blurRadius: 4, color: HFColor.gray)
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
              ),
              _icons()
            ],
          ),
        ),
      ),
    );
  }

  Widget _icons() {
    if (category.toUpperCase() == 'BEGINNER') {
      return Row(
        children: [
          Icon(
            Icons.bolt,
            color: HFColor.orange,
          ),
          Icon(
            Icons.bolt,
            color: HFColor.gray,
          ),
          Icon(
            Icons.bolt,
            color: HFColor.gray,
          )
        ],
      );
    } else if (category.toUpperCase() == 'INTERMEDIATE') {
      return Row(
        children: [
          Icon(
            Icons.bolt,
            color: HFColor.orange,
          ),
          Icon(
            Icons.bolt,
            color: HFColor.orange,
          ),
          Icon(
            Icons.bolt,
            color: HFColor.gray,
          )
        ],
      );
    } else {
      return Row(
        children: [
          Icon(
            Icons.bolt,
            color: HFColor.orange,
          ),
          Icon(
            Icons.bolt,
            color: HFColor.orange,
          ),
          Icon(
            Icons.bolt,
            color: HFColor.orange,
          )
        ],
      );
    }
  }
}
