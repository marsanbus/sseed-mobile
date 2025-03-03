import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sseed/pages/login.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF5a6b47),
            ),
            child: Text(
              'Menú',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/icons/configuration-gear-options-preferences-settings-system-svgrepo-com.svg',
              width: 24,
              height: 24,
            ),
            title: const Text('Configuración'),
            onTap: () {
              // Navegar a la página de configuración
              Navigator.pop(context);
              // Aquí puedes agregar la navegación a la página de configuración
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/icons/off-svgrepo-com.svg',
              width: 24,
              height: 24,
            ),
            title: const Text('Cerrar Sesión'),
            onTap: () {
              _showLogoutDialog(context);
            },
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cerrar Sesión'),
          content: const Text('¿Estás seguro de que quieres cerrar sesión?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text('Sí'),
            ),
          ],
        );
      },
    );
  }
}