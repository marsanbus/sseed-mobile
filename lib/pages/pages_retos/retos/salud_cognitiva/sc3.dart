import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Sc3Page extends StatelessWidget {
  const Sc3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '3. Sc3',
      description: 'Descripción de la salud cognitiva 3',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}