import 'package:flutter/material.dart';
import 'package:sseed/models/categorias_retos_model.dart';
import 'package:sseed/pages/pages_retos/retos/habitos_saludables/Hs1.dart';
import 'package:sseed/pages/pages_retos/retos/habitos_saludables/Hs2.dart';
import 'package:sseed/pages/pages_retos/retos/habitos_saludables/Hs3.dart';
import 'package:sseed/pages/pages_retos/retos/habitos_saludables/Hs4.dart';
import 'package:sseed/pages/pages_retos/retos/habitos_saludables/Hs5.dart';

class HabitosSaludables extends StatelessWidget {
  const HabitosSaludables({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CategoriasRetosModel(
      title: 'Habitos saludables',
      description: 'Las emociones positivas son aquellas que nos hacen sentir bien y nos ayudan a tener una visión más optimista de la vida.',
      buttons: [
        {
          'text': '1. Beber agua',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Hs1Page()),
            );
          },
        },
        {
          'text': '2. Sueño y descanso, rutina nocturna',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Hs2Page()),
            );
          },
        },
        {
          'text': '3. Respiración',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Hs3Page()),
            );
          },
        },
        {
          'text': '4. Atención plena en la alimentación',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Hs4Page()),
            );
          },
        },
        {
          'text': '5. Tiempo al aire libre',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Hs5Page()),
            );
          },
        },
      ],
    );
  }
}