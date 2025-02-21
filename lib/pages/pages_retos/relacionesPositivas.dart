import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RelacionesPositivas extends StatelessWidget {
  const RelacionesPositivas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String today = DateFormat('EEE d MMM', 'es_ES').format(DateTime.now());
    final String currentTime = DateFormat('HH:mm').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Relaciones Positivas'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RotatedBox(
              quarterTurns: -1,
              child: Text(
                'RETOS -----',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Relaciones Positivas',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              today,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              currentTime,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}