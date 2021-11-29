import 'package:flutter/material.dart';
import 'package:homefit/widgets/constants/grid.dart';
import 'package:homefit/widgets/text.dart';
import 'constants/constant.dart';

class HFHomeButtons extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final Color color;
  final double width;
  final MainAxisAlignment textAlignment;

  const HFHomeButtons({
    Key? key,
    required this.title,
    required this.color,
    this.onTap,
    required this.width,
    required this.textAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          decoration: BoxDecoration(
              color: color,
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
                _getIcons(),
                SizedBox(
                  height: HFGrid.xxLarge,
                ),
                Row(
                  mainAxisAlignment: textAlignment,
                  children: [
                    HFText(
                      title,
                      color: Colors.white,
                      weight: HFTextWeight.bold,
                      size: HFTextSize.large,
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget _getIcons() {
    if (title.toUpperCase() == 'HOME WORKOUT') {
      return Icon(Icons.fitness_center_outlined,
          color: Colors.white, size: HFGrid.xxxLarge);
    }
    if (title.toUpperCase() == 'CALORIE DEFICIT CALCULATOR') {
      return Icon(Icons.set_meal_outlined,
          color: Colors.white, size: HFGrid.xxxLarge);
    }
    if (title.toUpperCase() == 'NOTIFICATIONS') {
      return Icon(Icons.notifications,
          color: Colors.white, size: HFGrid.xxxLarge);
    } else {
      return Icon(
        Icons.app_settings_alt_outlined,
        color: Colors.white,
        size: HFGrid.xxxLarge,
      );
    }
  }
}
