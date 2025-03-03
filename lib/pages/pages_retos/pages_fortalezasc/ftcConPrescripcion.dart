import 'package:flutter/material.dart';
import 'package:sseed/models/custom_app_bar.dart';
import 'package:sseed/models/custom_menu_lateral.dart';
import 'package:sseed/pages/fortaleceTuCuerpo.dart';
import 'package:accordion/accordion.dart';

class FtcConPrescripcion extends StatelessWidget {
  const FtcConPrescripcion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      endDrawer: CustomDrawer(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hola, Ana',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '¿Preparada para el entrenamiento de hoy?',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Tu entrenamiento personalizado:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Accordion(
              headerBorderColor: const Color(0xFF5a6b47),
              headerBorderColorOpened: Colors.transparent,
              headerBorderWidth: 1,
              headerBackgroundColor: const Color(0xFF5a6b47), // Color del encabezado cuando está cerrado
              headerBackgroundColorOpened: const Color(0xFF5a6b47), // Color del encabezado cuando está abierto
              contentBackgroundColor: Colors.white,
              contentBorderColor: const Color(0xFF5a6b47),
              contentBorderWidth: 3,
              contentHorizontalPadding: 20,
              scaleWhenAnimating: true,
              openAndCloseAnimation: true,
              children: [
                AccordionSection(
                  isOpen: true,
                  header: const Text(
                    'Paseo con energía',
                    style: TextStyle(color: Colors.white), // Cambiar el color del texto del encabezado a blanco
                  ),
                  content: const Text('Da un paseo a paso acelerado'),
                  headerPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  contentHorizontalPadding: 20,
                  contentVerticalPadding: 20,
                  headerBorderRadius: 8, // Menos redondeado
                ),
                AccordionSection(
                  isOpen: false,
                  header: const Text(
                    'Marcha sin prisa pero sin pausa',
                    style: TextStyle(color: Colors.white), // Cambiar el color del texto del encabezado a blanco
                  ),
                  content: const Text('Da un paseo a paso acelerado'),
                  headerPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  contentHorizontalPadding: 20,
                  contentVerticalPadding: 20,
                  headerBorderRadius: 8, // Menos redondeado
                ),
                AccordionSection(
                  isOpen: false,
                  header: const Text(
                    'De puntillas como un bailarín',
                    style: TextStyle(color: Colors.white), // Cambiar el color del texto del encabezado a blanco
                  ),
                  content: const Text('Da un paseo a paso acelerado'),
                  headerPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  contentHorizontalPadding: 20,
                  contentVerticalPadding: 20,
                  headerBorderRadius: 8, // Menos redondeado
                ),
                AccordionSection(
                  isOpen: false,
                  header: const Text(
                    'Anda como un gato sigiloso',
                    style: TextStyle(color: Colors.white), // Cambiar el color del texto del encabezado a blanco
                  ),
                  content: const Text('Da un paseo a paso acelerado'),
                  headerPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  contentHorizontalPadding: 20,
                  contentVerticalPadding: 20,
                  headerBorderRadius: 8, // Menos redondeado
                ),
              ],
            ),
            const SizedBox(height: 50),
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
                  padding: const EdgeInsets.all(15.0),
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