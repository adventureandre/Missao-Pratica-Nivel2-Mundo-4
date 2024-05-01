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
          title: 'Centro de Goiânia',
          location: 'Goiânia, Goiás',
          description:
          'Goiânia é a capital do estado de Goiás, localizada na região Centro-Oeste do Brasil. '
              'Conhecida por sua arquitetura moderna e amplas avenidas arborizadas, '
              'a cidade oferece uma mistura vibrante de cultura, história e entretenimento. '
              'O Centro de Goiânia é o coração da cidade, repleto de lojas, restaurantes '
              'e pontos turísticos, como o Parque Vaca Brava e o Teatro Goiânia.',
        ),
        '/destino2': (context) => const Destinos(
          imagePath: 'images/caldas.png',
          title: 'Parque aquático de Caldas Novas',
          location: 'Caldas Novas, Goiás',
          description: 'Caldas Novas é famosa por suas águas termais e parques aquáticos. '
              'Localizado no coração do Brasil, este destino oferece diversão e relaxamento '
              'para toda a família. O Parque Aquático de Caldas Novas é um dos maiores e mais '
              'populares parques aquáticos da região, com uma variedade de piscinas, toboáguas, '
              'cachoeiras e atividades aquáticas para todos os gostos e idades.',
        ),
        '/destino3': (context) => const Destinos(
          imagePath: 'images/pirinopolis.png',
          title: 'Cachoeiras de Pirenópolis',
          location: 'Pirenópolis, Goiás',
          description: 'Pirenópolis é uma encantadora cidade colonial conhecida por suas '
              'ruas de paralelepípedos, arquitetura preservada e cachoeiras deslumbrantes. '
              'Localizada aos pés da Serra dos Pirineus, esta cidade histórica é um paraíso '
              'para os amantes da natureza e aventureiros. As cachoeiras de Pirenópolis são '
              'um destaque da região, oferecendo trilhas cênicas, piscinas naturais e vistas '
              'espetaculares das montanhas e da paisagem circundante.',
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
              title: const Text('Parque Aquático de Caldas Novas'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/destino2');
              },
            ),
            ListTile(
              title: const Text('Cachoeiras de Pirenópolis'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/destino3');
              },
            )
          ],
        ),
      ),
      body: const Home(),
    );
  }
}
