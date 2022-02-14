import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {

  const DicePage({Key? key}) : super(key: key);


  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  var leftDiceNumber = 5;
  var rightDIceNumber =2;

  void randomize(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDIceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children:  [
          Expanded(
              child: TextButton(
                style: TextButton.styleFrom(primary: Colors.greenAccent ),
                onPressed: () {
                  randomize();
                },
                child: Image(
            image: AssetImage('assets/dice$leftDiceNumber.png'),
            width: 200,
          ),
              )),
           Expanded(
             child: TextButton(
               style: TextButton.styleFrom(primary: Colors.red ),
               onPressed: (){
                 randomize();
               },
               child:  Image(
                 image: AssetImage('assets/dice$rightDIceNumber.png',),
                 width: 200,
               ),
             ),
           ),

        ],
      ),
    );
  }
}
