import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalResult;
  final VoidCallback resetHandler;
  Result(this.finalResult, this.resetHandler);
  String get resultPhrase {
    var resultText = 'You did it!';
    if (finalResult <= 8) {
      resultText = 'You have awesome & innocent personality :)';
    } else if (finalResult <= 12) {
      resultText = 'Pretty Likeable!';
    } else if (finalResult <= 16) {
      resultText = 'You are Strange!';
    } else {
      resultText = 'You have bad personality :(';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            style:
                // ButtonStyle(
                //     textStyle: MaterialStateProperty.all(
                //   TextStyle(
                //     fontSize: 23,
                //     fontWeight: FontWeight.bold,
                //   ),
                // )),
                OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.blue),
              padding: EdgeInsets.all(10),
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: resetHandler,
            child: Text('Try Again!'),
          )
        ],
      ),
    );
  }
}
