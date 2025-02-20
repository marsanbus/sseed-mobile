import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sseed/models/feature_model.dart';
import 'package:sseed/pages/cultivaTuBosque.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('es_ES', null);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String today = DateFormat('EEE d MMM', 'es_ES').format(DateTime.now());

    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(today: today),
            const SizedBox(height: 20),
            const IntroSection(),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cultivatubosque()),
                );
              },
              child: const FeatureCard(
                imagePath: 'assets/icons/feature1.jpg',
                title: 'Cultiva tu bosque',
              ),
            ),
            const SizedBox(height: 20),
            const FeatureCard(
              imagePath: 'assets/icons/feature2.jpg',
              title: 'Ejercita Tu Mente',
            ),
            const SizedBox(height: 20),
            const FeatureCard(
              imagePath: 'assets/icons/feature3.jpg',
              title: 'Entrena En Casa',
            ),
            const SizedBox(height: 20),
            const FeatureCard(
              imagePath: 'assets/icons/feature4.jpg',
              title: 'Diario De Registro',
            ),
            const SizedBox(height: 50),
            const ConnectSection(),
            const SizedBox(height: 50),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

// HEADER SECTION
class HeaderSection extends StatelessWidget {
  final String today;

  const HeaderSection({Key? key, required this.today}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/header.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 20,
          bottom: 30,
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
            ],
          ),
        ),
      ],
    );
  }
}

// INTRODUCTION SECTION
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

// CUSTOM APP BAR
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('assets/icons/Logotipo_Vertical_Transparente.png'),
      ),
      centerTitle: true,
      title: const SizedBox.shrink(),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/menu-alt-02-svgrepo-com.svg'),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

class ConnectSection extends StatelessWidget {
  const ConnectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Conecta',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          // Dos imágenes: chat y foro
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Imagen de chat
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/icons/chat.jpg', // Cambia la ruta a la imagen de chat
                  width: MediaQuery.of(context).size.width * 0.4, // 40% del ancho
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),

              Text (
                'Chat',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center, // Centrar el título
              ),

              SizedBox(height: 20),
              // Imagen de foro
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/icons/foro.jpg', // Cambia la ruta a la imagen del foro
                  width: MediaQuery.of(context).size.width * 0.4, // 40% del ancho
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),

              Text (
                'Foro',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center, // Centrar el título
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFF5a6b47), // Fondo verde
      padding: const EdgeInsets.all(20.0),
      child: const Text(
        '© 2025 Sembrando Salud',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
