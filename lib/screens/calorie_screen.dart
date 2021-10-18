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
  final formKey = GlobalKey<FormState>();
  int val = -1;
  gender? _gender = gender.male;
  String dropdownValue = 'Very light';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: "CALORIE DEFICIT"),
      body: _getForms(),
    );
  }

  Widget _getForms() {
    return Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(HFGrid.medium),
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: HFGrid.small,
              ),
              _getGender(),
              SizedBox(
                height: HFGrid.small,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Weight (kg)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: HFGrid.small,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Height (cm)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: HFGrid.small,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Goal Weight (kg)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: HFGrid.small,
              ),
              _getPhysicalActivity(),
              SizedBox(
                height: HFGrid.small,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: HFText(
                    'Calculate',
                    color: Colors.white,
                    size: HFTextSize.large,
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(HFColor.blue))),
            ],
          ),
        ));
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
}
