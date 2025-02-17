import 'package:flutter/material.dart';
import 'package:sseed/pages/home.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        // Inicializa la localización
        future: initializeDateFormatting('es_ES', null),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Cuando se completa la inicialización
            return HomePage();
          } else if (snapshot.hasError) {
            // En caso de error
            return Center(
              child: Text("Error al inicializar la localización"),
            );
          } else {
            // Mientras se inicializa
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}