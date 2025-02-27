import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Hs1Page extends StatelessWidget {
  const Hs1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '1. Beber agua',
      description: 'Descripción de la hábitos saludables 1',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}