import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Rp4Page extends StatelessWidget {
  const Rp4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '4. Compartir es vivir',
      description: 'Las relaciones profundas no se basan en lo material, sino en compartir lo que somos: nuestros pensamientos, sentimientos, inquietudes y sueños. Múltiples estudios han demostrado que fortalece los lazos emocionales y crea vínculos más genuinos, así que esta semana intenta compartir tu yo más personal y auténtico con las personas que más te importan.',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}