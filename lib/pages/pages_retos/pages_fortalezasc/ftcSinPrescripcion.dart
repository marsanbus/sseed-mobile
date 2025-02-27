import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sseed/models/custom_app_bar.dart';
import 'package:sseed/models/custom_menu_lateral.dart';

class FtcSinPrescripcion extends StatelessWidget {
  const FtcSinPrescripcion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateTime today = DateTime.now();
    final DateTime nextTrainingDay = today.add(const Duration(days: 2));
    final String formattedNextTrainingDay = DateFormat('EEEE d MMMM', 'es_ES').format(nextTrainingDay);

    return Scaffold(
      appBar: CustomAppBar(),
      endDrawer: CustomDrawer(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Página sin prescripción',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'Próximo entrenamiento: \n $formattedNextTrainingDay \n Durará 30\'',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}