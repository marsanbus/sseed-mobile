import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Sc2Page extends StatelessWidget {
  const Sc2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '2. Sc2',
      description: 'Descripción de la salud cognitiva 2',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}