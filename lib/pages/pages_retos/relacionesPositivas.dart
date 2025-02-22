import 'package:flutter/material.dart';
import 'package:sseed/models/categorias_retos_model.dart';
import 'package:sseed/pages/pages_retos/retos/relaciones_positivas/rp1.dart';
import 'package:sseed/pages/pages_retos/retos/relaciones_positivas/rp2.dart';
import 'package:sseed/pages/pages_retos/retos/relaciones_positivas/rp3.dart';
import 'package:sseed/pages/pages_retos/retos/relaciones_positivas/rp4.dart';
import 'package:sseed/pages/pages_retos/retos/relaciones_positivas/rp5.dart';

class RelacionesPositivas extends StatelessWidget {
  const RelacionesPositivas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CategoriasRetosModel(
      title: 'Relaciones Positivas',
      description: 'Las emociones positivas son aquellas que nos hacen sentir bien y nos ayudan a tener una visión más optimista de la vida.',
      buttons: [
        {
          'text': '1. Rp1',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Rp1Page()),
            );
          },
        },
        {
          'text': '2. Rp2',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Rp2Page()),
            );
          },
        },
        {
          'text': '3. Rp3',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Rp3Page()),
            );
          },
        },
        {
          'text': '4. Rp4',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Rp4Page()),
            );
          },
        },
        {
          'text': '5. Rp5',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Rp5Page()),
            );
          },
        },
      ],
    );
  }
}