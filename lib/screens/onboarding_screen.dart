import 'package:flutter/material.dart';
import 'package:homefit/screens/screen.dart';
import 'package:homefit/widgets/constants/constant.dart';
import 'package:homefit/widgets/text.dart';
import 'package:introduction_screen/introduction_screen.dart';

class HFOnBoarding extends StatelessWidget {
  const HFOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: IntroductionScreen(
      pages: [
        PageViewModel(
            title: 'HOME WORKOUT',
            body:
                'Daily training regimens for all of your major muscle groups are provided by HomeFit. You can build muscles and stay active at home in only a few minutes a day, without needing to go to the gym. All exercises may be done with just your body weight and no equipment or a coach.',
            image: buildImage('assets/images/female.jpg'),
            decoration: getPageDecoration(Colors.white)),
        PageViewModel(
            title: 'CALCULATE DIET',
            body:
                'Developing a healthy diet and lifestyle plan that will help you lose weight and keep it off in the long term requires much more than determining your current calorie needs and then eating fewer calories on a daily basis',
            image: buildImage('assets/images/male.jpg'),
            decoration: getPageDecoration(Colors.white)),
      ],
      done: HFText(
        'Done',
        weight: HFTextWeight.bold,
      ),
      onDone: () {
        goToHome(context);
      },
      showNextButton: false,
      showSkipButton: true,
      skip: HFText(
        'Skip',
        color: HFColor.blue,
        weight: HFTextWeight.bold,
      ),
      onSkip: () {
        goToHome(context);
      },
      next: Icon(Icons.arrow_forward),
      dotsDecorator: getDotDecoration(),
    ));
  }

  void goToHome(context) => Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => HFHomeScreen()));

  Widget buildImage(String path) {
    return Center(
        child: Image.asset(
      path,
      width: 350,
    ));
  }

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: HFColor.gray,
        activeColor: HFColor.lightOrange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration(Color color) => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 14),
        descriptionPadding: EdgeInsets.all(10).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: color,
      );
}
