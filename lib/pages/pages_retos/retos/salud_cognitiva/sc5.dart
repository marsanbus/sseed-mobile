import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Sc5Page extends StatelessWidget {
  const Sc5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '5. Sc5',
      description: 'Descripción de la salud cognitiva 5',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}