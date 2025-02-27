import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Hs2Page extends StatelessWidget {
  const Hs2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '2. Sueño y descanso, rutina nocturna ',
      description: 'Descripción de la hábitos saludables 2',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}