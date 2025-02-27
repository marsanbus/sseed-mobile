import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sseed/models/custom_app_bar.dart';
import 'package:sseed/models/custom_menu_lateral.dart';
import 'package:sseed/pages/fortaleceTuCuerpo.dart';

class FtcConPrescripcion extends StatelessWidget {
  const FtcConPrescripcion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String today = DateFormat('EEE d MMM', 'es_ES').format(DateTime.now());

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
              'Página con prescripción',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              today,
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            const Text(
              'Lista de ejercicios:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('1. Paseo con energía'),
            const Text('2. Marcha sin prisa pero sin pausa'),
            const Text('3. De puntillas como un bailarín'),
            const Text('4. Anda como un gato sigiloso'),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                'Ejercicio 1 - 10\'',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _showFeedbackDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5a6b47), // Color de fondo
                  foregroundColor: Colors.white, // Color del texto
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Color(0xFF5a6b47)), // Borde fino
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                ),
                child: const Text(
                  'Finalizar entrenamiento',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFeedbackDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('¿Qué tal el entrenamiento?'),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const FortaleceTuCuerpo()),
                  );
                },
                icon: const Text('😢', style: TextStyle(fontSize: 30)),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const FortaleceTuCuerpo()),
                  );
                },
                icon: const Text('😐', style: TextStyle(fontSize: 30)),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const FortaleceTuCuerpo()),
                  );
                },
                icon: const Text('😊', style: TextStyle(fontSize: 30)),
              ),
            ],
          ),
        );
      },
    );
  }
}