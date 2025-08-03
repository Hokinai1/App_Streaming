import 'package:flutter/material.dart';
import '../pages/details.dart';

class IdentificationStreaming extends StatelessWidget {
  final String tagStream;
  final String imageStream;
  final String NomStream;
  final String ChaineRadio;

  IdentificationStreaming({
    required this.tagStream,
    required this.imageStream,
    required this.NomStream,
    required this.ChaineRadio,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => AlbumStreaming(
              tag: tagStream,
              image: imageStream,
              nom: NomStream,
              chaine: ChaineRadio,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
          color: Colors.white,
        ),
        child: Column(
          children: [
            Hero(
              tag: tagStream,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(imageStream, height: 100, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                NomStream,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(ChaineRadio),
          ],
        ),
      ),
    );
  }
}
