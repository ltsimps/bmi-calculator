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
                  cardChild: Column (
                    children: <Widget>[
                      Icon(
                          FontAwesomeIcons.mars,
                          size: 75.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text('Male', style:  TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF8D8E98),

                      ),)
                    ],
                  ),
                  ),

                ),
                Expanded(
                  child: ReusableCard(cardColor: activeContainerColor),
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