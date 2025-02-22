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
      title: 'Habitos Saludables',
      description: 'Las emociones positivas son aquellas que nos hacen sentir bien y nos ayudan a tener una visión más optimista de la vida.',
      buttons: [
        {
          'text': '1. Hs1',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Hs1Page()),
            );
          },
        },
        {
          'text': '2. Hs2',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Hs2Page()),
            );
          },
        },
        {
          'text': '3. Hs3',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Hs3Page()),
            );
          },
        },
        {
          'text': '4. Hs4',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Hs4Page()),
            );
          },
        },
        {
          'text': '5. Hs5',
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