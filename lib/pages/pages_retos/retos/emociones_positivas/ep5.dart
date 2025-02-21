import 'package:flutter/material.dart';
import 'package:sseed/models/retos_model.dart';

class Ep5Page extends StatelessWidget {
  const Ep5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RetosModel(
      title: '5. Tus logros cuentan',
      description: 'A veces, nos olvidamos de todo lo que conseguimos en el día a día. Puede que para otros parezca poco, pero tú sabes lo que te ha costado. Esta semana, date el reconocimiento que mereces y fíjate también en los logros de quienes te rodean.',
      buttonText: 'Empezar Reto',
      onPressed: () {
        // Acción del botón
      },
    );
  }
}