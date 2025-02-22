import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Sc1Page extends StatelessWidget {
  const Sc1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '1. Sc1',
      description: 'Descripción de la salud cognitiva 1',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}