import 'package:flutter/material.dart';
import 'package:flutter_app2/CategoryPage/logic_game.dart';
import 'package:flutter_app2/CategoryPage/celebrites_game.dart';
// import 'package:flutter_app_lets_play/category/puzzle_game.dart';
// import 'package:flutter_app_lets_play/category/book_game.dart';
class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Category Page"),
      ),
      body: SingleChildScrollView(
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
                              context, MaterialPageRoute(builder: (_) => LogicGames()));
                        },
                        child: Text(
                          'Logic',
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
                              context, MaterialPageRoute(builder: (_) => CelebritesGame()));
                        },
                        child: Text(
                          'Celebrities',
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
      ),
    );
  }
}