import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeContainerColor =  Color( 0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);




class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(cardColor: activeContainerColor,
                  cardChild: BMICard( Icon(
                      FontAwesomeIcons.mars,
                      size: 75.0,
                     ), 'Male'),
                  ),

                ),
                Expanded(
                  child: ReusableCard(cardColor: activeContainerColor, cardChild:BMICard(
                    Icon(
                      FontAwesomeIcons.venus,
                      size: 75.0,
                    ), 'Female'


                  ),

                  ),

                ),

            ]),
          ),
          Expanded(

            child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(cardColor: activeContainerColor),
                  ),

                ]),
          ),
          Expanded(
            child: Row(
                children: <Widget>[
                  Expanded(
                    child:ReusableCard(cardColor: activeContainerColor),
                  ),
                  Expanded(
                    child: ReusableCard( cardColor:  activeContainerColor),
                  ),

                ]),
          ),

          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,

          ),

        ],

      ),
    );
  }
}

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
        Text( cardText, style:  TextStyle(
          fontSize: 18.0,
          color: Color(0xFF8D8E98),

        ),),
      ],
    );
  }
}

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