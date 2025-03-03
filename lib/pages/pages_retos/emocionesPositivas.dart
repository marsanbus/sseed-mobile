import 'package:flutter/material.dart';
import 'package:sseed/pages/pages_retos/retos/emociones_positivas/ep1.dart';
import 'package:sseed/pages/pages_retos/retos/emociones_positivas/ep2.dart';
import 'package:sseed/pages/pages_retos/retos/emociones_positivas/ep3.dart';
import 'package:sseed/pages/pages_retos/retos/emociones_positivas/ep4.dart';
import 'package:sseed/pages/pages_retos/retos/emociones_positivas/ep5.dart';
import 'package:sseed/models/categorias_retos_model.dart';

class EmocionesPositivas extends StatelessWidget {
  const EmocionesPositivas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CategoriasRetosModel(
      title: 'Emociones positivas',
      description: 'Las emociones positivas son aquellas que nos hacen sentir bien y nos ayudan a tener una visión más optimista de la vida.',
      buttons: [
        {
          'text': '1. En busca de sentido, como Víctor Frankl',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Ep1Page()),
            );
          },
        },
        {
          'text': '2. ¡Baja revoluciones!',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Ep2Page()),
            );
          },
        },
        {
          'text': '3. Está bien sentirse así',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Ep3Page()),
            );
          },
        },
        {
          'text': '4. Pequeños momentos que importan',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Ep4Page()),
            );
          },
        },
        {
          'text': '5. Tus logros cuentan',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Ep5Page()),
            );
          },
        },
      ],
    );
  }
}