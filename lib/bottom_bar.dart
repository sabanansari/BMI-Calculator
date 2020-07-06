import 'package:flutter/material.dart';
import 'constants.dart';
import 'result_page.dart';

class BottomButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  BottomButton(this.label, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
            child: Text(
          label,
          style: kLargeButtonTextStyle,
        )),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
