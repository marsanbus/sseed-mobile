import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Fc4Page extends StatelessWidget {
  const Fc4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '4. Enfócate en lo que sí puedes controlar',
      description: 'Muchas veces nos sentimos abrumados por todo lo que no podemos controlar. Esta semana, dedica unos minutos al día a reflexionar sobre una situación que te cause ansiedad o estrés, y pregunta: "¿Qué parte de esto puedo cambiar o mejorar?" Al enfocarte solo en lo que puedes controlar, reducirás la carga emocional de lo que está fuera de tu alcance.',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}