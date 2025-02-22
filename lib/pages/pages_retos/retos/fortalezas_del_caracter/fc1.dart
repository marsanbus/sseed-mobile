import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Fc1Page extends StatelessWidget {
  const Fc1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '1. Practica la gratitud',
      description: 'Es de bien nacido ser agradecido, como dijo Miguel de Cervantes en su famosa obra “Don Quijote de la Mancha”. A veces, nos centramos tanto en lo que falta que olvidamos todo lo que ya está en nuestra vida y nos sostiene. Esta semana, haz un ejercicio consciente de gratitud: fíjate en las personas, momentos o pequeños detalles que te aportan algo bueno y, si puedes, exprésalo en voz alta o por escrito. Verás cómo cambia la perspectiva.',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}