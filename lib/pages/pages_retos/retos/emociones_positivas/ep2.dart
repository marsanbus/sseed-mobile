import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Ep2Page extends StatelessWidget {
  const Ep2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '2. ¡Baja revoluciones!',
      description: 'Todos tenemos momentos de estrés, pero podemos aprender a manejarlo. Esta semana, prueba distintas formas de calmarte: respirar profundamente, escuchar música, moverte, escribir… Encuentra lo que te ayude.',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}