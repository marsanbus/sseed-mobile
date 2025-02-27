import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Fc3Page extends StatelessWidget {
  const Fc3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '3. ¡Ríe!',
      description: '¿Sabías que la risa tiene efectos comprobados sobre nuestra salud mental y física? Estudios han demostrado que reír reduce los niveles de cortisol (la hormona del estrés), mejora el estado de ánimo y fortalece el sistema inmunológico. Esta semana, dedica unos minutos cada día para reír, ya sea viendo algo cómico, recordando situaciones divertidas o compartiendo chistes.',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}