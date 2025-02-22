import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Fc4Page extends StatelessWidget {
  const Fc4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '4. Autorregulación',
      description: 'Descripción de la fortaleza del carácter 4',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}