import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Rp2Page extends StatelessWidget {
  const Rp2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '2. Escucha activa',
      description: 'Descripción de la relacion positiva 2',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}