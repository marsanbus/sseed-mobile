import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Rp5Page extends StatelessWidget {
  const Rp5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '5. Rp5',
      description: 'Descripción de la relacion positiva 5',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}