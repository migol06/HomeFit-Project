import 'package:flutter/material.dart';
import 'package:homefit/widgets/appbar.dart';
import 'package:homefit/widgets/calorie.dart';
import 'package:homefit/widgets/constants/constant.dart';
import 'package:homefit/widgets/constants/grid.dart';
import 'package:homefit/widgets/text.dart';

class HFCaloriDeficit extends StatefulWidget {
  const HFCaloriDeficit({Key? key}) : super(key: key);

  @override
  _HFCaloriDeficitState createState() => _HFCaloriDeficitState();
}

class _HFCaloriDeficitState extends State<HFCaloriDeficit> {
  final _form = GlobalKey<FormState>();
  double fatCal = 0.0;
  double cal = 0.0;
  TextEditingController _daysController = new TextEditingController();
  TextEditingController _weightController = new TextEditingController();

  @override
  void initState() {
    cal = 0;
    super.initState();
  }

  @override
  void dispose() {
    cal = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: "CALORIE DEFICIT"),
      body: _getForms(),
    );
  }

  Widget _getForms() {
    return Padding(
      padding: const EdgeInsets.all(HFGrid.large),
      child: Form(
        key: _form,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  HFText(
                    'LOSE WEIGHT',
                    size: HFTextSize.xxLarge,
                    weight: HFTextWeight.bold,
                  ),
                  HFText(
                      'Input the weight you want to loose and the days you\'ll diet'),
                ],
              ),
            ),
            SizedBox(height: HFGrid.large),
            TextFormField(
                decoration: InputDecoration(
                  labelText: 'Weight to loose (kg) E.g 10kg',
                  border: OutlineInputBorder(),
                ),
                controller: _weightController,
                keyboardType: TextInputType.number,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "Please Input your weight you want to loose";
                  }
                  return null;
                }),
            SizedBox(
              height: HFGrid.small,
            ),
            TextFormField(
                decoration: InputDecoration(
                  labelText: 'Days of Diet',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                controller: _daysController,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "Please input the days of the diet";
                  }
                  return null;
                }),
            SizedBox(
              height: HFGrid.small,
            ),
            _getButton(),
            SizedBox(
              height: HFGrid.small,
            ),
            HFCalories(
                calorieTitle: "Decrease Calorie Intakes", calorieCalc: cal)
          ],
        ),
      ),
    );
  }

  Widget _getButton() {
    return ElevatedButton(
        onPressed: () {
          if (_form.currentState!.validate()) {
            double weight = double.parse(_weightController.text);
            double days = double.parse(_daysController.text);
            setState(() {
              fatCal = weight * 7700;
              cal = fatCal / days;
            });
          }
        },
        child: HFText(
          'Calculate',
          color: Colors.white,
          size: HFTextSize.large,
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(HFColor.blue)));
  }
}
