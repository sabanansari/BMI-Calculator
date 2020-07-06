import 'package:bmi_calc/bottom_bar.dart';
import 'package:bmi_calc/constants.dart';
import 'package:bmi_calc/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  ResultsPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 50.0,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: BlackCard(
                  colour: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText.toUpperCase(),
                        style: kDescriptionStyle,
                      ),
                      Text(
                        bmiResult,
                        style: TextStyle(
                            fontSize: 100.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        interpretation,
                        style: kBodyTextStyle,
                      )
                    ],
                  ),
                )),
            Expanded(
              child: BottomButton('RE-CALCULATE', () {
                Navigator.pop(context);
              }),
            )
          ],
        ));
  }
}
