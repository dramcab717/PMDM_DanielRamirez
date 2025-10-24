import 'package:flutter/material.dart';

class NestedRowsColumnsScreen extends StatelessWidget {
  const NestedRowsColumnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejemplo de filas y columnas anidadas"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // separa las filas
          children: [
            // Primera fila
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ImageWithLabel(imagePath: "assets/images/img1.jpg", label: "Llamar por teléfono"),
                ImageWithLabel(imagePath: "assets/images/img2.jpg", label: "Enviar correo"),
              ],
            ),
            // Segunda fila
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ImageWithLabel(imagePath: "assets/images/img3.jpg", label: "Abrir cámara"),
                ImageWithLabel(imagePath: "assets/images/img4.jpg", label: "Ver mapa"),
              ],
            ),
            // Tercera fila
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ImageWithLabel(imagePath: "assets/images/img5.jpg", label: "Configuración"),
                ImageWithLabel(imagePath: "assets/images/img1.jpg", label: "Favoritos"),
                ImageWithLabel(imagePath: "assets/images/img2.jpg", label: "Contactos"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Widget que muestra una imagen y un texto debajo
class ImageWithLabel extends StatelessWidget {
  final String imagePath;
  final String label;

  const ImageWithLabel({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
