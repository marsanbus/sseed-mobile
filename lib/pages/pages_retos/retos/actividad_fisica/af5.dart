import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Af5Page extends StatelessWidget {
  const Af5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '5. Af5',
      description: 'Descripción de la actividad física 5',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}