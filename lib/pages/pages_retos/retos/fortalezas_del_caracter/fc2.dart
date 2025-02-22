import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Fc2Page extends StatelessWidget {
  const Fc2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '2. Perdón',
      description: 'Descripción de la fortaleza del carácter 2',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}