import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Rp5Page extends StatelessWidget {
  const Rp5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '5. Cuestión de prioridad ',
      description: 'En la vida, la prioridad que le damos a las personas más cercanas refleja el valor que les damos. Esta semana, haz el esfuerzo de dedicar tiempo de calidad a las personas que más te importan, dejando de lado las distracciones y enfocándote en ellas. Porque lo que realmente importa es la calidad del tiempo que compartes, no la cantidad.',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}