import 'package:flutter/material.dart';
import 'package:sseed/models/categorias_retos_model.dart';
import 'package:sseed/pages/pages_retos/retos/fortalezas_del_caracter/fc1.dart';
import 'package:sseed/pages/pages_retos/retos/fortalezas_del_caracter/fc2.dart';
import 'package:sseed/pages/pages_retos/retos/fortalezas_del_caracter/fc3.dart';
import 'package:sseed/pages/pages_retos/retos/fortalezas_del_caracter/fc4.dart';
import 'package:sseed/pages/pages_retos/retos/fortalezas_del_caracter/fc5.dart';

class FortalezasDelCaracter extends StatelessWidget {
  const FortalezasDelCaracter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CategoriasRetosModel(
      title: 'Fortalezas del Carácter',
      description: 'Las emociones positivas son aquellas que nos hacen sentir bien y nos ayudan a tener una visión más optimista de la vida.',
      buttons: [
        {
          'text': '1. Practica la gratitud',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Fc1Page()),
            );
          },
        },
        {
          'text': '2. Reinterpretación positiva',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Fc2Page()),
            );
          },
        },
        {
          'text': '3. ¡Ríe!',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Fc3Page()),
            );
          },
        },
        {
          'text': '4. Enfócate en lo que sí puedes controlar',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Fc4Page()),
            );
          },
        },
        {
          'text': '5. Personalidad resiliente',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Fc5Page()),
            );
          },
        },
      ],
    );
  }
}