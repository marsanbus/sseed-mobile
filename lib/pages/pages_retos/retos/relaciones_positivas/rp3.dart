import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Rp3Page extends StatelessWidget {
  const Rp3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '3. Rp3',
      description: 'Descripción de la relacion positiva 3',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}