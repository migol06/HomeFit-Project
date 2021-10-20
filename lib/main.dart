import 'package:flutter/material.dart';
import 'package:homefit/screens/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomeFit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HFHomeScreen(),
    );
  }
}
