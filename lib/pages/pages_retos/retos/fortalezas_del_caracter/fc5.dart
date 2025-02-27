import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Fc5Page extends StatelessWidget {
  const Fc5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '5. Personalidad resiliente',
      description: 'La resiliencia no solo es cómo reaccionamos ante las dificultades, sino cómo entrenamos nuestra mente para enfrentar los retos con fortaleza. Esta semana, dedica unos minutos cada día para trabajar en tres aspectos clave: perseverancia, autocompasión y optimismo. Verás cómo estos aspectos pueden ayudarte a superar las dificultades de manera más efectiva.',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}