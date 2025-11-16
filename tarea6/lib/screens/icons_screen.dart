import 'package:flutter/material.dart';

class IconsScreen extends StatelessWidget {
  const IconsScreen({super.key});

  Widget _buildIconRow(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48.0),
          const SizedBox(width: 16.0),
          Text(
            label,
            style: const TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Iconos')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildIconRow(Icons.home, 'Inicio'),
            _buildIconRow(Icons.phone, 'Teléfono'),
            _buildIconRow(Icons.mail, 'Correo'),
            _buildIconRow(Icons.star, 'Favoritos'),
            _buildIconRow(Icons.settings, 'Ajustes'),
          ],
        ),
      ),
    );
  }
}
