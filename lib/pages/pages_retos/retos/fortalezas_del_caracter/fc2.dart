import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Fc2Page extends StatelessWidget {
  const Fc2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '2. Reinterpretación positiva',
      description: 'Las situaciones difíciles pueden ser desafiantes, pero cada una tiene el potencial de enseñarnos algo nuevo. Esta semana, dedica unos minutos al día para reflexionar sobre momentos y eventos que te resulten complicados e intenta cambiar la perspectiva. ',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}