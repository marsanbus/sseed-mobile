import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Ep1Page extends StatelessWidget {
  const Ep1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '1. En busca de sentido, como Víctor Frankl',
      description: 'Cuando la vida nos pone a prueba, recordar lo que realmente nos importa puede ayudarnos a encontrar claridad. Esta semana, reflexiona sobre aquello que te da sentido: las personas que quieres, las pequeñas cosas que disfrutas, los valores que te guían.',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}