import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'info_celebrities.dart';

Widget CelebritesCards(cImage , cName , cInfo) {
  return Card(
    elevation: 0.0,
    margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 0.0, bottom: 0.0),
    color: Color(0x00000000),
    child: FlipCard(
      direction: FlipDirection.HORIZONTAL,
      speed: 1000,
      front: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(cImage),
            Text(cName,
                style: TextStyle(color: Colors.black.withOpacity(0.8),)

            ),
          ],
        ),
      ),
      back: Container(
        decoration: BoxDecoration(
          color: Color(0xFF006666),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(cInfo),
          ],
        ),
      ),
    ),
  );
}