import 'package:bmi_calculattor/input_page.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'reusablecard.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult,required this.resultText,required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'BMI Calculator'
        ),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child:Text('Yours Result',
              style: kTitleStyle,
              ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                  colour: kActivecardcolor,
                  cardChild: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resultText.toUpperCase(),
                      style: kresultTextStyle,
                      ),
                      Text(bmiResult,
                      style: kBMITextStyle,
                      ),
                      Text(interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22.0,

                      ),
                      ),
                    ],
                  ),
              ),
          ),
         GestureDetector(
           onTap: (){
             Navigator.pop(context, MaterialPageRoute(builder: (context)=>InputPage()));
           },
           child: Container(
             alignment: Alignment.center,
             child: Text(
               'RE-CALCULATE',
               style: TextStyle(
                 fontSize: 25.0,
                 fontWeight:FontWeight.bold,
               ),
             ),
             color: kBottomcontainercolor,
             margin: EdgeInsets.only(top: 10.0),
             width: double.infinity,
             height: kBottomcontainerheight,
           ),
         ),
        ],
      ),
    );
  }
}
