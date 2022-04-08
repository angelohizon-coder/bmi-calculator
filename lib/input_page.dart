import 'dart:ui';

import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'constant.dart';
import 'content.dart';
import 'reusable_cards.dart';
import 'result_page.dart';
import 'round_icon_button.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

enum Gender { female, male }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // nullable variables
  Gender? selectedGender;
  Color? femaleColor;
  Color? maleColor;

  double height = 50;
  int age = 5;
  int weight = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // width: double.infinity,
                child: Center(
                  child: Text(
                    'BMI Calculator',
                    style: defaultStyleTwo,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 0),
                      child: ReusableCards(
                        color: selectedGender == Gender.male
                            ? maleColor = colorTwoActive
                            : maleColor = colorTwoInactive,
                        card: Content(
                          color: Color(0xFFEDEDED),
                          label: 'Male',
                        ),
                        press: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 0),
                      child: ReusableCards(
                        color: selectedGender == Gender.female
                            ? femaleColor = colorOneActive
                            : femaleColor = colorOneInactive,
                        card: Content(
                          color: Color(0xFF56CFDB),
                          label: 'Female',
                        ),
                        press: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCards(
                      color: Color(0xFFEDEDED),
                      card: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Content(
                              color: Color(0xFF56CFDB),
                              label: 'Height',
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: SfSlider.vertical(
                              activeColor: Color(0xFF4DBAC5),
                              inactiveColor: Color(0xFFD5D5D5),
                              value: height,
                              min: 50,
                              max: 250,
                              interval: 50,
                              showTicks: true,
                              showLabels: true,
                              // enableTooltip: true,
                              onChanged: (value) {
                                setState(() {
                                  height = value;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  height.toStringAsFixed(0),
                                  style: defaultStyleOne,
                                ),
                                SizedBox(
                                  width: 1.5,
                                ),
                                Text(
                                  'cm',
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: ReusableCards(
                            color: Color(0xFFEDEDED),
                            card: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Content(
                                    color: Color(0xFF56CFDB),
                                    label: 'Weight',
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text(
                                      weight.toString(),
                                      style: defaultStyleTwo,
                                    ),
                                    SizedBox(
                                      width: 1.5,
                                    ),
                                    Text(
                                      'kg',
                                    ),
                                  ],
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RoundIconButton(
                                        icon: FontAwesomeIcons.plus,
                                        press: () {
                                          setState(
                                            () {
                                              weight++;
                                            },
                                          );
                                        },
                                      ),
                                      RoundIconButton(
                                        icon: FontAwesomeIcons.minus,
                                        press: () {
                                          setState(
                                            () {
                                              if (weight > 0) {
                                                weight--;
                                              }
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: ReusableCards(
                            color: Color(0xFFEDEDED),
                            card: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Content(
                                    color: Color(0xFF56CFDB),
                                    label: 'Age',
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text(
                                      age.toString(),
                                      style: defaultStyleTwo,
                                    ),
                                    SizedBox(
                                      width: 1.5,
                                    ),
                                    Text('yrs'),
                                  ],
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RoundIconButton(
                                        icon: FontAwesomeIcons.plus,
                                        press: () {
                                          setState(
                                            () {
                                              age++;
                                            },
                                          );
                                        },
                                      ),
                                      RoundIconButton(
                                        icon: FontAwesomeIcons.minus,
                                        press: () {
                                          setState(() {
                                            if (age > 0) {
                                              age--;
                                            }
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                child: GestureDetector(
                  onTap: () {
                    CalculatorBrain calc =
                        CalculatorBrain(height: height.toInt(), weight: weight);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(
                          bmiResult: calc.calculateBMI(),
                          resultText: calc.getResult(),
                          interpretation: calc.getInterpretation(),
                        ),
                      ),
                    );
                  },
                  child: ReusableCards(
                    color: Color(0xFF56CFDB),
                    card: Content(
                      color: Color(0xFFEDEDED),
                      label: 'Let\'s Begin',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
