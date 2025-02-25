import 'package:flutter/material.dart';
import 'package:sseed/models/custom_app_bar.dart';
import 'package:sseed/models/custom_menu_lateral.dart';
import 'dart:async';

class RetosModel extends StatefulWidget {
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
  _RetosModelState createState() => _RetosModelState();
}

class _RetosModelState extends State<RetosModel> {
  Duration _duration = Duration(seconds: 5); // Duración inicial de una semana
  Timer? _timer;
  bool _isCounting = false;
  bool _showCounter = false; // Controla la visibilidad del contador

  void _startCountdown() {
    if (_isCounting) return; // Evita iniciar múltiples temporizadores

    setState(() {
      _isCounting = true;
      _showCounter = true; // Muestra el contador
    });

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_duration.inSeconds > 0) {
          _duration = _duration - Duration(seconds: 1); // Reduce el tiempo
        } else {
          _timer?.cancel(); // Detiene el temporizador cuando llega a cero
          _isCounting = false;
          _showCounter = false; // Oculta el contador
          _showCompletionDialog(); // Muestra el diálogo de finalización
        }
      });
    });
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('¡Tiempo terminado!'),
          content: Text('El reto ha finalizado.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el diálogo
              },
              child: Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String days = twoDigits(duration.inDays);
    String hours = twoDigits(duration.inHours.remainder(24));
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$days:$hours:$minutes:$seconds'; // Formato días:horas:minutos:segundos
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancela el temporizador al destruir el widget
    super.dispose();
  }

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
              widget.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const Spacer(),
            Center(
              child: Column(
                children: [
                  if (_showCounter) // Muestra el contador si _showCounter es true
                    Text(
                      _formatDuration(_duration),
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  if (!_showCounter) // Muestra el botón si _showCounter es false
                    ElevatedButton(
                      onPressed: () {
                        _startCountdown(); // Inicia la cuenta atrás
                        widget.onPressed(); // Ejecuta la acción personalizada
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5a6b47), // Color de fondo
                        foregroundColor: Colors.white, // Color del texto
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 30.0,
                        ),
                      ),
                      child: Text(
                        widget.buttonText,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}