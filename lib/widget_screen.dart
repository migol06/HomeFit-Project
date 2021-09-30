import "package:flutter/material.dart";
import 'package:homefit/widgets/constants/constant.dart';
import 'package:homefit/widgets/widgets.dart';

class HFWidgetScreen extends StatefulWidget {
  const HFWidgetScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HFWidgetScreen> createState() => _HFWidgetScreenState();
}

class _HFWidgetScreenState extends State<HFWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        HFText.title("Homefit"),
        SizedBox(height: HFGrid.small),
        HFText(
          'This is a demo Text',
          color: HFColor.scorpion,
          size: HFTextSize.small,
          weight: HFTextWeight.bold,
          style: HFTextStyle.normal,
        ),
        SizedBox(
          height: HFGrid.large,
        ),
        HFText(
          'This is a demo2 Text',
          color: HFColor.orange,
          size: HFTextSize.large,
          weight: HFTextWeight.extraBold,
          style: HFTextStyle.normal,
        ),
        SizedBox(
          height: HFGrid.large,
        ),
        HFText(
          'This is a demo2 Text',
          color: HFColor.blue,
          size: HFTextSize.large,
          weight: HFTextWeight.extraBold,
          style: HFTextStyle.normal,
        ),
        SizedBox(
          height: HFGrid.large,
        ),
        HFAppBar(
          title: "Home Workout",
          leftWidget: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        )
      ])),
    );
  }
}
