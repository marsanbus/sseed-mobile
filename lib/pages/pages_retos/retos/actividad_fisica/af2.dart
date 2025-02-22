import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Af2Page extends StatelessWidget {
  const Af2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '2. subir por las escaleras',
      description: 'Descripción de la actividad física 2',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}