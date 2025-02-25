import 'package:flutter/material.dart';
import 'package:sseed/models/custom_app_bar.dart';
import 'package:sseed/models/custom_menu_lateral.dart';

class FortaleceTuCuerpo extends StatelessWidget {
  const FortaleceTuCuerpo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      endDrawer: CustomDrawer(),
      backgroundColor: Colors.white,
      body: const Center(
        child: Text(
          "Entrena en Casa", 
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      )
    );
  }
}