import 'package:flutter/material.dart';

class RepeatedImagesScreen extends StatelessWidget {
  const RepeatedImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F5F2), // Fondo claro
      appBar: AppBar(
        title: const Text('Disposición de Imágenes'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Fila 1: Una imagen desde Internet
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://eq2imhfmrcc.exactdn.com/wp-content/uploads/2016/08/golden-retriever.jpg?strip=all&lossy=1&w=540&ssl=1',
                  width: 250,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 70),

            // Fila 2: Dos imágenes iguales desde assets
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildLocalImage('assets/images/img1.jpg'),
                const SizedBox(width: 15),
                buildLocalImage('assets/images/img1.jpg'),
              ],
            ),
            const SizedBox(height: 70),

            // Fila 3: Tres imágenes iguales desde assets
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildLocalImage('assets/images/img2.jpg'),
                const SizedBox(width: 15),
                buildLocalImage('assets/images/img2.jpg'),
                const SizedBox(width: 15),
                buildLocalImage('assets/images/img2.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget auxiliar para las imágenes locales
  Widget buildLocalImage(String path) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        path,
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
