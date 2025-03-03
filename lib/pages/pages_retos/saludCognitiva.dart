import 'package:flutter/material.dart';
import 'package:sseed/models/categorias_retos_model.dart';
import 'package:sseed/pages/pages_retos/retos/salud_cognitiva/sc1.dart';
import 'package:sseed/pages/pages_retos/retos/salud_cognitiva/sc2.dart';
import 'package:sseed/pages/pages_retos/retos/salud_cognitiva/sc3.dart';
import 'package:sseed/pages/pages_retos/retos/salud_cognitiva/sc4.dart';
import 'package:sseed/pages/pages_retos/retos/salud_cognitiva/sc5.dart';

class SaludCognitiva extends StatelessWidget {
  const SaludCognitiva({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CategoriasRetosModel(
      title: 'Salud cognitiva',
      description: 'Las emociones positivas son aquellas que nos hacen sentir bien y nos ayudan a tener una visión más optimista de la vida.',
      buttons: [
        {
          'text': '1. Sc1',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Sc1Page()),
            );
          },
        },
        {
          'text': '2. Sc2',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Sc2Page()),
            );
          },
        },
        {
          'text': '3. Sc3',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Sc3Page()),
            );
          },
        },
        {
          'text': '4. Sc4',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Sc4Page()),
            );
          },
        },
        {
          'text': '5. Sc5',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Sc5Page()),
            );
          },
        },
      ],
    );
  }
}