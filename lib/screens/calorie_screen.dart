import 'package:flutter/material.dart';
import 'package:homefit/widgets/appbar.dart';
import 'package:homefit/widgets/constants/constant.dart';
import 'package:homefit/widgets/constants/grid.dart';
import 'package:homefit/widgets/text.dart';

enum gender { male, female }

class HFCaloriDeficit extends StatefulWidget {
  const HFCaloriDeficit({Key? key}) : super(key: key);

  @override
  _HFCaloriDeficitState createState() => _HFCaloriDeficitState();
}

class _HFCaloriDeficitState extends State<HFCaloriDeficit> {
  int val = -1;
  gender? _gender = gender.male;
  String dropdownValue = 'Very light';
  TextEditingController _ageController = new TextEditingController();
  TextEditingController _weightController = new TextEditingController();
  TextEditingController _heightController = new TextEditingController();
  TextEditingController _goalWeightController = new TextEditingController();
  bool _validateAge = false;
  bool _validateWeight = false;
  bool _validateHeight = false;
  bool _validateGoalWeight = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: "CALORIE DEFICIT"),
      body: _getForms(),
    );
  }

  Widget _getForms() {
    return Padding(
      padding: const EdgeInsets.all(HFGrid.medium),
      child: ListView(
        children: [
          TextField(
            decoration: InputDecoration(
                labelText: 'Age',
                border: OutlineInputBorder(),
                errorText: _validateAge ? "Please Input your age" : null),
            controller: _ageController,
          ),
          SizedBox(
            height: HFGrid.small,
          ),
          _getGender(),
          SizedBox(
            height: HFGrid.small,
          ),
          TextField(
              decoration: InputDecoration(
                  labelText: 'Weight (kg)',
                  border: OutlineInputBorder(),
                  errorText:
                      _validateWeight ? "Please Input your weight" : null),
              controller: _weightController),
          SizedBox(
            height: HFGrid.small,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: 'Height (cm)',
                border: OutlineInputBorder(),
                errorText: _validateHeight ? "Please Input your weight" : null),
            controller: _heightController,
          ),
          SizedBox(
            height: HFGrid.small,
          ),
          TextField(
              decoration: InputDecoration(
                  labelText: 'Goal Weight (kg)',
                  border: OutlineInputBorder(),
                  errorText:
                      _validateGoalWeight ? "Please Input your weight" : null),
              controller: _goalWeightController),
          SizedBox(
            height: HFGrid.small,
          ),
          _getPhysicalActivity(),
          SizedBox(
            height: HFGrid.small,
          ),
          _getButton()
        ],
      ),
    );
  }

  Widget _getButton() {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            validate();
          });
        },
        child: HFText(
          'Calculate',
          color: Colors.white,
          size: HFTextSize.large,
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(HFColor.blue)));
  }

  Widget _getGender() {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Radio<gender>(
                value: gender.male,
                groupValue: _gender,
                onChanged: (gender? value) {
                  setState(() {
                    _gender = value;
                    print(_gender);
                  });
                },
                activeColor: HFColor.orange,
              ),
              Expanded(child: HFText('Male'))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Radio<gender>(
                value: gender.female,
                groupValue: _gender,
                onChanged: (gender? value) {
                  setState(() {
                    _gender = value;
                    print(_gender);
                  });
                },
                activeColor: HFColor.orange,
              ),
              Expanded(child: HFText('Female'))
            ],
          ),
        ),
      ],
    );
  }

  Widget _getPhysicalActivity() {
    return Row(
      children: [
        HFText(
          'Physical Activity',
          size: HFTextSize.large,
        ),
        SizedBox(
          width: HFGrid.medium,
        ),
        DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 16,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
              print(dropdownValue);
            });
          },
          items: <String>['Very light', 'light', 'Moderate', 'Heavy']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  void validate() {
    if (_ageController.text.isEmpty) {
      _validateAge = true;
    } else {
      _validateAge = false;
    }

    if (_weightController.text.isEmpty) {
      _validateWeight = true;
    } else {
      _validateWeight = false;
    }

    if (_heightController.text.isEmpty) {
      _validateWeight = true;
    } else {
      _validateHeight = false;
    }

    if (_goalWeightController.text.isEmpty) {
      _validateGoalWeight = true;
    } else {
      _validateGoalWeight = false;
    }
  }
}
