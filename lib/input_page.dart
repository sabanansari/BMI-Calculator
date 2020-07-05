import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: BlackCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                cardChild: GenderCard(FontAwesomeIcons.mars, 'MALE'),
                colour: (selectedGender == Gender.male
                    ? kActiveCardColour
                    : kInactiveCardColour),
              )),
              Expanded(
                  child: BlackCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                cardChild: GenderCard(FontAwesomeIcons.venus, 'FEMALE'),
                colour: selectedGender == Gender.female
                    ? kActiveCardColour
                    : kInactiveCardColour,
              )),
            ],
          )),
          Expanded(
            child: BlackCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      min: 120.0,
                      max: 220.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: BlackCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  children: <Widget>[
                    Text(
                      'WEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      weight.toString(),
                      style: kNumberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(FontAwesomeIcons.minus, () {
                          setState(() {
                            weight--;
                          });
                        }),
                        SizedBox(
                          width: 12.0,
                        ),
                        RoundIconButton(FontAwesomeIcons.plus, () {
                          setState(() {
                            weight++;
                          });
                        })
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                  child: BlackCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  children: <Widget>[
                    Text(
                      'AGE',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      age.toString(),
                      style: kNumberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(FontAwesomeIcons.minus, () {
                          setState(() {
                            age--;
                          });
                        }),
                        SizedBox(
                          width: 12.0,
                        ),
                        RoundIconButton(FontAwesomeIcons.plus, () {
                          setState(() {
                            age++;
                          });
                        }),
                      ],
                    )
                  ],
                ),
              )),
            ],
          )),
          Container(
            color: kBottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton(this.icon, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
