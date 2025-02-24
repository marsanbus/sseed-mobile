import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sseed/models/feature_model.dart';
import 'package:sseed/pages/cultivaTuBosque.dart';
import 'package:sseed/models/custom_app_bar.dart';
import 'package:sseed/models/custom_menu_lateral.dart';
import 'package:sseed/models/header_section.dart';
import 'package:sseed/models/intro_section.dart';
import 'package:sseed/models/connect_section.dart';
import 'package:sseed/models/footer_section.dart';

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
      endDrawer: const CustomDrawer(), // Cambiar a endDrawer aquí
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