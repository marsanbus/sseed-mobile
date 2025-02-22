import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Rp4Page extends StatelessWidget {
  const Rp4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '4. Rp4',
      description: 'Descripción de la relacion positiva 4',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}