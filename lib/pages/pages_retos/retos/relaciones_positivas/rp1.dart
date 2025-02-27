import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Rp1Page extends StatelessWidget {
  const Rp1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '1. Cultiva vínculos auténticos',
      description: 'Según estudios, las conexiones sociales profundas pueden reducir el riesgo de depresión y mejorar la longevidad. Esta semana, busca hacer una conexión auténtica con alguien cercano todos los días. Un simple gesto, una conversación sincera o un apoyo pueden mejorar tus relaciones y tu bienestar.',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}