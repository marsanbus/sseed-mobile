import 'package:flutter/material.dart';
import 'package:sseed/models/custom_app_bar.dart';

class CategoriasRetosModel extends StatelessWidget {
  final String title;
  final String description;
  final List<Map<String, dynamic>> buttons;

  const CategoriasRetosModel({
    Key? key,
    required this.title,
    required this.description,
    required this.buttons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: buttons.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      _buildButton(context, buttons[index]['text'], buttons[index]['onPressed']),
                      if (index < buttons.length - 1) _buildDivider(),
                    ],
                  );
                },
              ),
            ),
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

  Widget _buildDivider() {
    return const Center(
      child: RotatedBox(
        quarterTurns: -1,
        child: Text(
          '-----',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 2.0,
          ),
        ),
      ),
    );
  }
}