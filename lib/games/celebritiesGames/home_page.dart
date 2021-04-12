import 'package:flutter/material.dart';
import 'package:flutter_app2/games/celebritiesGames/cart_prototype.dart';
import 'package:flutter_app2/games/celebritiesGames/info_celebrities.dart';
class HomePage extends StatelessWidget {
  _renderBg() {
    return Container(
      decoration: BoxDecoration(color: const Color(0xFFFFFFFF)),
    );
  }

  _renderAppBar(context) {
    return MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      child: AppBar(
        brightness: Brightness.dark,
        elevation: 0.0,
        backgroundColor: Color(0x01FFFFFF),
      ),
    );
  }

  _renderContent(context) {
    return GridView.count(
      primary: true,
      padding: const EdgeInsets.all(0.0),
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      crossAxisCount: 1,
      children: <Widget>[
        //CelebritesCards(CelebritiesImages.celebritiesImages[0] , cName , cInfo),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlipCard'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _renderBg(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _renderAppBar(context),
              Expanded(
                flex: 4,
                child: _renderContent(context),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
