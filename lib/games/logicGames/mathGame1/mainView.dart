import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  String answer = '';

  void checkAnswer(String userPickedAnswer) {
    String correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if (quizBrain.isFinished() == true) {
        quizBrain.reset();
        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.white,
            size: 20.0,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
            size: 20.0,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/mathGame1assets/fone.jpg"),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            //flex: 5,
            child: Padding(
              padding: EdgeInsets.only(left: 30),
              child: Center(
                child: Row(
                  children: [
                    Text(
                      quizBrain.getQuestionText(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    // addClickedNumber(),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              _images(1),
              _images(2),
              _images(3),
            ],
          ),
          Row(
            children: <Widget>[
              _images(4),
              _images(5),
              _images(6),
            ],
          ),
          Row(
            children: <Widget>[
              _images(7),
              _images(8),
              _images(9),
            ],
          ),
          _images(0),
          Container(
            child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: FloatingActionButton.extended(
                  onPressed: () {
                    setState(() {
                      checkAnswer(answer);
                      answer = "";
                    });
                  },
                  label: const Text('Ստուգել',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  backgroundColor: Colors.green,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Row(
              children: scoreKeeper,
            ),
          )
        ],
      ),
    );
  }

  Widget _images(int imageIndex) => Expanded(
        child: Padding(
          padding: EdgeInsets.only(bottom: 2),
          child: FlatButton(
            textColor: Colors.white,
            //color: Colors.green,
            child: Image.asset('assets/mathGame1assets/num$imageIndex.jpg'),
            onPressed: () {
              setState(() {
                answer += "$imageIndex";
              });
            },
          ),
        ),
      );
}
