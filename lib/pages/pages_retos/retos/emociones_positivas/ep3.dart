import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Ep3Page extends StatelessWidget {
  const Ep3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '3. Está bien sentirse así',
      description: 'Hay días buenos y días malos, y todas las emociones tienen su lugar. No necesitas forzarte a estar bien todo el tiempo. Esta semana, intenta no luchar contra lo que sientes. Solo obsérvalo, sin juzgarlo. Darte permiso para sentir es también una forma de cuidarte.',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}