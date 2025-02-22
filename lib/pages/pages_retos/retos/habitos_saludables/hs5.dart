import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Hs5Page extends StatelessWidget {
  const Hs5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '5. Hs5',
      description: 'Descripción de la hábitos saludables 5',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}