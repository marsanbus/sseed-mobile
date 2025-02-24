import 'package:flutter/material.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RotatedBox(
            quarterTurns: -1,
            child: Text(
              'INICIO -----',
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
            'Tu Programa Personalizado',
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
        ],
      ),
    );
  }
}