import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sseed/pages/pages_retos/actividadFisica.dart'; // Importa la nueva página
import 'package:sseed/pages/pages_retos/relacionesPositivas.dart';
import 'package:sseed/pages/pages_retos/emocionesPositivas.dart';
import 'package:sseed/pages/pages_retos/fortalezasDelCaracter.dart';
import 'package:sseed/pages/pages_retos/habitosSaludables.dart';
import 'package:sseed/pages/pages_retos/saludCognitiva.dart';
import 'package:sseed/models/custom_app_bar.dart';
import 'package:sseed/models/footer_section.dart';
import 'package:sseed/models/custom_menu_lateral.dart';

class Cultivatubosque extends StatelessWidget {
  const Cultivatubosque({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String today = DateFormat('EEE d MMM', 'es_ES').format(DateTime.now());

    final List<String> categoryTitles = [
      'Actividad física',
      'Relaciones positivas',
      'Emociones positivas',
      'Fortalezas del carácter',
      'Hábitos saludables',
      'Salud cognitiva'
    ];

    return Scaffold(
      appBar: CustomAppBar(),
      endDrawer: CustomDrawer(),
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
                        if (categoryTitles[index] == 'Actividad física') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ActividadFisica()),
                          );
                        }
                        if (categoryTitles[index] == 'Relaciones positivas') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RelacionesPositivas()),
                          );
                        }
                        if (categoryTitles[index] == 'Emociones positivas') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const EmocionesPositivas()),
                          );
                        }
                        if (categoryTitles[index] == 'Fortalezas del carácter') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FortalezasDelCaracter()),
                          );
                        }
                        if (categoryTitles[index] == 'Hábitos saludables') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HabitosSaludables()),
                          );
                        }
                        if (categoryTitles[index] == 'Salud cognitiva') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SaludCognitiva()),
                          );
                        }
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
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Podium Sport',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                today,
                style: const TextStyle(
                  color: Colors.black,
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
            'Cultiva tu bosque',
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