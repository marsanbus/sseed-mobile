import 'package:flutter/material.dart';
import 'package:sseed/pages/chat.dart';
import 'package:sseed/pages/foro.dart';

class ConnectSection extends StatelessWidget {
  const ConnectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Conecta',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          // Dos imágenes: chat y foro
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Imagen de chat
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Chat()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    'assets/icons/chat.jpg', // Cambia la ruta a la imagen de chat
                    width: MediaQuery.of(context).size.width * 0.4, // 40% del ancho
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text(
                'Chat',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center, // Centrar el título
              ),
              const SizedBox(height: 20),
              // Imagen de foro
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Foro()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    'assets/icons/foro.jpg', // Cambia la ruta a la imagen del foro
                    width: MediaQuery.of(context).size.width * 0.4, // 40% del ancho
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text(
                'Foro',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center, // Centrar el título
              ),
            ],
          ),
        ],
      ),
    );
  }
}