import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {

  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: (){
                leftDiceNumber++;
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
              onPressed: (){
                rightDiceNumber++;
              },
            ),
          ),
        ],
      ),
    );
  }
}
