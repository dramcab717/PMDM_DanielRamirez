import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.indigo, Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.person, size: 70, color: Colors.white),
                SizedBox(height: 10),
                Text(
                  "Menú Principal",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),

          // --- ITEMS DEL MENU ---

          _buildDrawerItem(
            context,
            icon: Icons.home,
            text: "Home",
            route: '/home',
          ),

          _buildDrawerItem(
            context,
            icon: Icons.info,
            text: "Info",
            route: '/info',
          ),

          _buildDrawerItem(
            context,
            icon: Icons.person,
            text: "Perfil",
            route: '/profile',
          ),

          _buildDrawerItem(
            context,
            icon: Icons.image,
            text: "Galería",
            route: '/gallery',
          ),

          _buildDrawerItem(
            context,
            icon: Icons.star,
            text: "Icons",
            route: '/icons',
          ),

          _buildDrawerItem(
            context,
            icon: Icons.photo_library,
            text: "Imágenes",
            route: '/images',
          ),

          _buildDrawerItem(
            context,
            icon: Icons.font_download,
            text: "Fuentes",
            route: '/fonts',
          ),

          _buildDrawerItem(
            context,
            icon: Icons.repeat,
            text: "Imágenes repetidas",
            route: '/repeated_images',
          ),

          _buildDrawerItem(
            context,
            icon: Icons.task,
            text: "Ejercicio 8",
            route: '/exercise8',
          ),

          _buildDrawerItem(
            context,
            icon: Icons.task_alt,
            text: "Ejercicio 9",
            route: '/exercise9',
          ),

          _buildDrawerItem(
            context,
            icon: Icons.numbers,
            text: "Counter",
            route: '/counter',
          ),

          _buildDrawerItem(
            context,
            icon: Icons.camera,
            text: "Instagram Clone",
            route: '/instagram',
          ),

          _buildDrawerItem(
            context,
            icon: Icons.touch_app,
            text: "Tap Game",
            route: '/tap_game',
          ),

          _buildDrawerItem(
            context,
            icon: Icons.color_lens,
            text: "Random Colors",
            route: '/randomColors',
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.exit_to_app, color: Colors.red),
            title: const Text("Salir"),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text("Adivina el número"),
            leading: const Icon(Icons.numbers),
            onTap: () => Navigator.pushNamed(context, '/guessNumber'),
          ),
          ListTile(
            title: const Text("Formulario dinámico"),
            leading: const Icon(Icons.list_alt),
            onTap: () => Navigator.pushNamed(context, '/dynamicForm'),
          ),
        ],
      ),
    );
  }

  // Método para evitar repetir código
  Widget _buildDrawerItem(BuildContext context,
      {required IconData icon,
      required String text,
      required String route}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: () {
        Navigator.pop(context); // Cierra el drawer
        Navigator.pushNamed(context, route);
      },
    );
  }
}
