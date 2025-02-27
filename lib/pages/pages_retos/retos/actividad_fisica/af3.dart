import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Af3Page extends StatelessWidget {
  const Af3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '3. Levantarse cada x tiempo sentado',
      description: 'Descripción de la actividad física 3',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}