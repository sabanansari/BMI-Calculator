import 'package:bmi_calc/bottom_bar.dart';
import 'package:bmi_calc/constants.dart';
import 'package:bmi_calc/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
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
                        '',
                        style: kDescriptionStyle,
                      ),
                      Text(
                        '',
                        style: TextStyle(
                            fontSize: 100.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '',
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
