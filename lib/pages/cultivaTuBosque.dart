import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sseed/pages/home.dart';
import 'package:sseed/pages/actividadFisica.dart'; // Importa la nueva página
import 'package:sseed/pages/relacionesPositivas.dart';

class Cultivatubosque extends StatelessWidget {
  const Cultivatubosque({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String today = DateFormat('EEE d MMM', 'es_ES').format(DateTime.now());

    final List<String> categoryTitles = [
      'Actividad Física',
      'Relaciones Positivas',
      'Emociones Positivas',
      'Fortalezas del Carácter',
      'Hábitos Saludables',
      'Salud Cognitiva'
    ];

    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderCultivaSection(today: today),
            const SizedBox(height: 20),
            const IntroCultivaSection(),
            const SizedBox(height: 100),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(categoryTitles.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        if (categoryTitles[index] == 'Actividad Física') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ActividadFisica()),
                          );
                        }
                        if (categoryTitles[index] == 'Relaciones Positivas') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RelacionesPositivas()),
                          );
                        }
                        // Aquí puedes agregar más condiciones para otras categorías en el futuro
                      },
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/icons/ctb1.jpg',
                              width: 270,
                              height: 270,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            categoryTitles[index],
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 100),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class HeaderCultivaSection extends StatelessWidget {
  final String today;

  const HeaderCultivaSection({Key? key, required this.today}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String currentTime = DateFormat('HH:mm').format(DateTime.now());

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 378 * (MediaQuery.of(context).size.width / 306), // Ajusta la altura según la relación de aspecto de la imagen
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/feature1.jpg'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hola, Ana',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Podium Sport',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                today,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                currentTime,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class IntroCultivaSection extends StatelessWidget {
  const IntroCultivaSection({Key? key}) : super(key: key);

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
            'Cultiva Tu Bosque',
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