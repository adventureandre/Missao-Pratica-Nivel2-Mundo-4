import 'package:explore_mundo/screens/destinos.dart';
import 'package:explore_mundo/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/destino1': (context) => const Destinos(
              imagePath: 'images/goiania.png',
              title: 'Centro de Goiania',
              location: 'Goiania, Goias',
              description:
                  'Goiânia é a capital do estado de Goiás, localizada na região Centro-Oeste do Brasil. ',
            ),
        '/destino2': (context) => const Destinos(
              imagePath: 'images/caldas.png',
              title: 'Parque aquático',
              location: 'Caldas Novas, Goias',
              description: 'caksas',
            ),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sejam Bem-vindos!'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Goiania, Centro'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/destino1');
              },
            ),
            ListTile(
              title: const Text('Park Aquático'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/destino2');
              },
            )
          ],
        ),
      ),
      body: const Home(),
    );
  }
}
