import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  double calWeight = 0.0;
  TextEditingController _daysController = new TextEditingController();
  TextEditingController _weightController = new TextEditingController();
  TextEditingController _currentWeightController = new TextEditingController();

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
                  labelText: 'Current Weight',
                  border: OutlineInputBorder(),
                ),
                controller: _currentWeightController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                validator: (text) {
                  if (text == null || text.isEmpty || text.contains(',')) {
                    return "Please Input your weight";
                  }
                  return null;
                }),
            SizedBox(height: HFGrid.large),
            TextFormField(
                decoration: InputDecoration(
                  labelText: 'Goal Weight',
                  border: OutlineInputBorder(),
                ),
                controller: _weightController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                validator: (text) {
                  if (text == null || text.isEmpty || text.contains(',')) {
                    return "Please Input your weight you want to loose";
                  }
                  return null;
                }),
            SizedBox(
              height: HFGrid.small,
            ),
            HFText('For better weightloss set the days to 30 days'),
            SizedBox(height: HFGrid.small),
            TextFormField(
                decoration: InputDecoration(
                  labelText: 'Days of Diet E.g 30',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                controller: _daysController,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
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
            int currentWeight = int.parse(_currentWeightController.text);
            double weight = double.parse(_weightController.text);
            double days = double.parse(_daysController.text);
            setState(() {
              calWeight = currentWeight - weight;
              fatCal = calWeight * 7700;
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
