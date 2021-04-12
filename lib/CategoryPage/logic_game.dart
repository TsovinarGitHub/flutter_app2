import 'package:flutter/material.dart';
import 'package:flutter_app2/games/logicGames/mathGame1/mainView.dart';
import 'package:flutter_app2/games/logicGames/mathGame2/mainView.dart';


class LogicGames extends StatefulWidget {
  @override
  _LogicGameState createState() => _LogicGameState();
}

class _LogicGameState extends State<LogicGames> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30.0 , right: 150),
                child: Center(
                  child: Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(50.0)),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => Quizzler()));
                      },
                      child: Text(
                        'գործողություններ',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text("Logic"),
              ),
            ],
          ),

          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only( left: 150),
                child: Center(
                  child: Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(50.0)),

                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => Quizzler2()));
                      },
                      child: Text(
                        'Puzzle',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Text("Puzzle"),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Center(
                  child: Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(50.0)),
                    child: FlatButton(
                      // onPressed: () {
                      //   Navigator.push(
                      //       context, MaterialPageRoute(builder: (_) => BookGames()));
                      // },
                      child: Text(
                        'BookGame',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text("BookGame"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}