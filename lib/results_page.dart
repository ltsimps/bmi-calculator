import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),

      ),
      body: Column (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text('Your Result',
                style: kTitleTextStyle,


              ),

            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(cardColor:kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Result',
                 style: kResultsTextStyle,

                ),
                Text('18.3',

                style: kBMITextStyle,
                ),
                Text('Yor BMI result is quite low, you should eat more',
                 textAlign: TextAlign.center,
                  style: kAnalysisTextStyle,

                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:  (context) => InputPage()));
                  },
                  child: Container(

                    child: Center(
                      child: Text('Re-Calculate ',
                        style: kLargeButtonTextStyle,),
                    ),
                    color: kBottomContainerColor,
                    margin: EdgeInsets.only(top: 10.0),
                    padding: EdgeInsets.only(bottom: 10.0),
                    width: double.infinity,
                    height: kBottomContainerHeight,


                  ),
                ),


              ],
            ),),
          )
        ],
      ),
    );
  }
}
