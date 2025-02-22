import 'package:flutter/material.dart';
import 'package:sseed/models/categorias_retos_model.dart';
import 'package:sseed/pages/pages_retos/retos/actividad_fisica/af1.dart';
import 'package:sseed/pages/pages_retos/retos/actividad_fisica/af2.dart';
import 'package:sseed/pages/pages_retos/retos/actividad_fisica/af3.dart';
import 'package:sseed/pages/pages_retos/retos/actividad_fisica/af4.dart';
import 'package:sseed/pages/pages_retos/retos/actividad_fisica/af5.dart';

class ActividadFisica extends StatelessWidget {
  const ActividadFisica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CategoriasRetosModel(
      title: 'Actividad Física',
      description: 'Las emociones positivas son aquellas que nos hacen sentir bien y nos ayudan a tener una visión más optimista de la vida.',
      buttons: [
        {
          'text': '1. pasos 10.000',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Af1Page()),
            );
          },
        },
        {
          'text': '2. subir por las escaleras',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Af2Page()),
            );
          },
        },
        {
          'text': '3. Af3',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Af3Page()),
            );
          },
        },
        {
          'text': '4. Af4',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Af4Page()),
            );
          },
        },
        {
          'text': '5. Af5',
          'onPressed': () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Af5Page()),
            );
          },
        },
      ],
    );
  }
}