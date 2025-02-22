import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Fc1Page extends StatelessWidget {
  const Fc1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '1. Fc1',
      description: 'Descripción de la fortaleza del carácter 1',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}