import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exemplo de uma linha (Row) com três colunas'),
        ),
        body: MeuLayout(),
      ),
    ),
  );
}

class MeuLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
