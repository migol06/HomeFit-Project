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
          ],
        ));
  }

  Widget _getGender() {
    return Column(
      children: [
        ListTile(
          title: HFText("Male"),
          leading: Radio<gender>(
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
        ),
        ListTile(
          title: HFText("Female"),
          leading: Radio<gender>(
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
        )
      ],
    );
  }
}
