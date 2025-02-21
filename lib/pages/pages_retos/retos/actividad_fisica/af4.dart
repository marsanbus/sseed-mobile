import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Af4Page extends StatelessWidget {
  const Af4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '4. Af4',
      description: 'Descripción de la actividad física 4',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}