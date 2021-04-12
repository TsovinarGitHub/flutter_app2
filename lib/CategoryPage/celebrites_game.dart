import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/games/celebritiesGames/home_page.dart';

import 'package:flip_card/flip_card.dart';

void main() => runApp(CelebritesGame());
class CelebritesGame extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Հայտնիներ',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}


