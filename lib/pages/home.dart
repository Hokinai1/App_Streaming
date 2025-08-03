import 'package:app_streaming/widgets/identifiant_streaming.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Vos émissions en streaming"),

        // actions: [
        //   IconButton(icon: Icon(Icons.search), onPressed: () {}),
        //   title: Text("Vos émissions en streaming"),
        //   IconButton(icon: Icon(Icons.list), onPressed: () {}),
        // ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
          color: Colors.white,
        ),
        title: Text(
          'Vos émissions en streaming',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 9, 150, 168),

        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Liste des émissions disponibles',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(child: partieGrilleImage()),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Rechercher',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}

Widget partieGrilleImage() {
  return ResponsiveGridList(
    desiredItemWidth: 150,
    minSpacing: 10,

    children: [
      IdentificationStreaming(
        tagStream: 'news',
        imageStream: 'assets/images/microphone.png',
        NomStream: 'Actualité du jour',
        ChaineRadio: 'Sport FM',
      ),

      IdentificationStreaming(
        tagStream: 'sport',
        imageStream: 'assets/images/stadium.png',
        NomStream: 'Le sport à fond',
        ChaineRadio: 'Sport FM',
      ),

      IdentificationStreaming(
        tagStream: 'Sport Golf',
        imageStream: 'assets/images/golf.png',
        NomStream: 'Sport de la semaine',
        ChaineRadio: 'Sport FM',
      ),

      IdentificationStreaming(
        tagStream: 'Musique',
        imageStream: 'assets/images/gf.png',
        NomStream: 'Hits de la semaine',
        ChaineRadio: 'Radio Music',
      ),

      IdentificationStreaming(
        tagStream: 'musique',
        imageStream: 'assets/images/boxing.png',
        NomStream: 'Hits de la semaine',
        ChaineRadio: 'Radio Music',
      ),
    ],
  );
}
