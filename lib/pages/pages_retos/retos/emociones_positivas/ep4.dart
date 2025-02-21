import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Ep4Page extends StatelessWidget {
  const Ep4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '4. Pequeños momentos que importan',
      description: 'Hacer algo que nos gusta, aunque sea solo unos minutos al día, nos da energía. Esta semana, intenta dedicar cada día un poco de tiempo a una actividad que te haga sentir bien, sin que tenga que ser útil o productiva, simplemente porque la disfrutas.',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}