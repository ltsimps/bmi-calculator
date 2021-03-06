import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class BMICard extends StatelessWidget {
  final Icon cardIcon;
  final cardText;
  const BMICard( this.cardIcon, this.cardText);


  @override
  Widget build(BuildContext context) {
    return Column (
      children: <Widget>[
        cardIcon,
        SizedBox(
          height: 15.0,
        ),
        Text( cardText, style:  kLabelTextStyle,
        ),
      ],
    );
  }
}
