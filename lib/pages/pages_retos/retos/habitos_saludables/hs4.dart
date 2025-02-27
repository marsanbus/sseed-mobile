import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Hs4Page extends StatelessWidget {
  const Hs4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '4. Atención plena en la alimentación',
      description: 'Descripción de la hábitos saludables 4',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}