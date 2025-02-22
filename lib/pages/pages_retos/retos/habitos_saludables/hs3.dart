import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Hs3Page extends StatelessWidget {
  const Hs3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '3. Hs3',
      description: 'Descripción de la hábitos saludables 3',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}