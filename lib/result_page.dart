import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'content.dart';
import 'input_page.dart';
import 'reusable_cards.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.resultText, this.interpretation});

  final String? bmiResult;
  final String? resultText;
  final String? interpretation;

  double checker(double answer) {
    answer = answer / 25;
    if (answer > 1) {
      return 1;
    } else {
      return answer;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                'BMI Result',
                style: defaultStyleTwo,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new CircularPercentIndicator(
                  radius: 240.0,
                  lineWidth: 25.0,
                  percent: checker(double.parse(bmiResult!)),
                  center: new Text(
                    '$resultText',
                    style: defaultStyleOne,
                  ),
                  animation: true,
                  progressColor: Color(0xFF56CFDB),
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: Color(0xFFC0C0C0),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: Text(
                    '$interpretation',
                    style: defaultStyleOne,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(52.25),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InputPage(),
                    ),
                  );
                },
                child: ReusableCards(
                  color: Color(0xFF56CFDB),
                  card: Content(
                    color: Color(0xFFEDEDED),
                    label: 'Recalculate BMI',
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
