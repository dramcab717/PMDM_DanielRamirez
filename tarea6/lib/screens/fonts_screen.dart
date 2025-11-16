import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FontsScreen extends StatelessWidget {
  const FontsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fuentes y Texto")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.blue[50],
            height: 80,
            width: double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(8),
            child: Text(
              "Este es un texto demasiado largo para caber en una sola línea con Google Fonts Lobster",
              style: GoogleFonts.lobster(fontSize: 30, color: Colors.blue),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            color: Colors.green[50],
            height: 80,
            width: double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(8),
            child: AutoSizeText(
              "Texto autoajustable con AutoSizeText para adaptarse al contenedor sin desbordar",
              style: const TextStyle(fontFamily: 'Courier', fontSize: 28),
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.purple[50],
            height: 80,
            width: double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(8),
            child: const Text(
              "Texto clásico con estilo predeterminado en Flutter con overflow visible",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
              overflow: TextOverflow.fade,
            ),
          ),
        ],
      ),
    );
  }
}
