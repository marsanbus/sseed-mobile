import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Fc5Page extends StatelessWidget {
  const Fc5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '5. Fc5',
      description: 'Descripción de la fortaleza del carácter 5',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}