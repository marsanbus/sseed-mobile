import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Sc4Page extends StatelessWidget {
  const Sc4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '4. Sc4',
      description: 'Descripción de la salud cognitiva 4',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}