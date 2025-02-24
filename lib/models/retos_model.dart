import 'package:flutter/material.dart';
import 'package:sseed/models/custom_app_bar.dart';
import 'package:sseed/models/custom_menu_lateral.dart';

class RetosModel extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onPressed;

  const RetosModel({
    Key? key,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      endDrawer: CustomDrawer(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5a6b47), // Color de fondo
                  foregroundColor: Colors.white, // Color del texto
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                ),
                child: Text(
                  buttonText,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}