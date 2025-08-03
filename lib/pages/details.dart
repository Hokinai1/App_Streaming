import 'package:flutter/material.dart';
import 'dart:math';

class AlbumStreaming extends StatelessWidget {
  final String tag;
  final String image;
  final String nom;
  final String chaine;

  AlbumStreaming({
    required this.tag,
    required this.image,
    required this.nom,
    required this.chaine,
  });

  String randomDate() {
    final now = DateTime.now();
    final random = Random();
    final daysAgo = random.nextInt(30);
    return "${now.subtract(Duration(days: daysAgo)).toLocal()}".split(' ')[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          nom,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Hero(
            tag: tag,
            child: Image.asset(
              image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            nom,
            style: TextStyle(
              color: Color.fromARGB(255, 9, 150, 168),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(chaine, style: TextStyle(color: Colors.grey)),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.volume_up),
                  title: Text('Diffusion ${index + 1}'),
                  subtitle: Text('Date : ${randomDate()}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
