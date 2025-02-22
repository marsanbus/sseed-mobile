import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Fc3Page extends StatelessWidget {
  const Fc3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '3. Fc3',
      description: 'Descripción de la fortaleza del carácter 3',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}