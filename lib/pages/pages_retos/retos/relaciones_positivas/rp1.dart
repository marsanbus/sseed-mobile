import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Rp1Page extends StatelessWidget {
  const Rp1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '1. Rp1',
      description: 'Descripción de la relacion positiva 1',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}