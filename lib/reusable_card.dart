
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ReusableCard extends StatelessWidget {

  final Color cardColor;
  final Widget cardChild;

  ReusableCard( {@required this.cardColor , this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration (
        color: cardColor,
        borderRadius: BorderRadius.circular(
            10.0
        ),
      ) ,

    );
  }
}