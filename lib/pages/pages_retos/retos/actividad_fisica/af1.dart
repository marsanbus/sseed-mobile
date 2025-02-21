import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Af1Page extends StatelessWidget {
  const Af1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '1. Af1',
      description: 'Descripción de la actividad física 1',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}