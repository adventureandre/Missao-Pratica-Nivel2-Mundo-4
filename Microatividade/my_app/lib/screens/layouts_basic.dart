import 'package:flutter/material.dart';


class MyLayout extends StatelessWidget {
  const MyLayout({super.key,});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: <Widget>[
              Icon(Icons.call),
              Text('Chamar'),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.directions),
              Text('Rota'),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.share),
              Text('Compartilhar'),
            ],
          ),
        ],
      ),
    );
  }
}
