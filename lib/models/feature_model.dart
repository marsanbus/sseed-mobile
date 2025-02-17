import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const FeatureCard({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Imagen completa con márgenes ajustados
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0), // Márgenes laterales
            child: ClipRRect(
              child: Image.asset(
                imagePath,
                width: MediaQuery.of(context).size.width * 0.9, // 90% del ancho total
                height: 250, // Aumenta la altura para dar más protagonismo
                fit: BoxFit.contain, // La imagen completa aún se muestra sin recortes
              ),
            ),
          ),
          const SizedBox(height: 10), // Espaciado
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center, // Centrar el título
          ),
        ],
      ),
    );
  }
}
