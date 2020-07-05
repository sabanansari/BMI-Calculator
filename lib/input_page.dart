import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const Color activeCardColour = Color(0xFF1D1E33);
const Color inactiveCardColour = Color(0xFF111328);
const Color bottomContainerColour = Color(0xFFEB1555);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                child: BlackCard(
                  cardChild: GenderCard(FontAwesomeIcons.mars, 'MALE'),
                  colour: selectedGender == Gender.male
                      ? activeCardColour
                      : inactiveCardColour,
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                child: BlackCard(
                  cardChild: GenderCard(FontAwesomeIcons.venus, 'FEMALE'),
                  colour: selectedGender == Gender.female
                      ? activeCardColour
                      : inactiveCardColour,
                ),
              )),
            ],
          )),
          Expanded(child: BlackCard(colour: activeCardColour)),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: BlackCard(
                colour: activeCardColour,
              )),
              Expanded(
                  child: BlackCard(
                colour: activeCardColour,
              )),
            ],
          )),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
