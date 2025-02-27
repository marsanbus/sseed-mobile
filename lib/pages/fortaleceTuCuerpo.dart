import 'package:flutter/material.dart';
import 'package:sseed/models/custom_app_bar.dart';
import 'package:sseed/models/custom_menu_lateral.dart';
import 'package:sseed/pages/pages_retos/pages_fortalezasc/ftcConPrescripcion.dart';
import 'package:sseed/pages/pages_retos/pages_fortalezasc/ftcSinPrescripcion.dart';

class FortaleceTuCuerpo extends StatelessWidget {
  const FortaleceTuCuerpo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      endDrawer: CustomDrawer(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              '¿Tienes prescripción?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildButton(context, 'Sí', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FtcConPrescripcion()),
              );
            }),
            _buildButton(context, 'No', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FtcSinPrescripcion()),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, VoidCallback onPressed) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF5a6b47), // Color de fondo
          foregroundColor: Colors.white, // Color del texto
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(color: Color(0xFF5a6b47)), // Borde fino
          ),
          padding: const EdgeInsets.symmetric(vertical: 15.0),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}