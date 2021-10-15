import 'package:flutter/material.dart';
import 'package:homefit/widgets/appbar.dart';

class HFAbsScreen extends StatelessWidget {
  const HFAbsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HFAppBar(title: "ABS BEGINNER"),
    );
  }
}
