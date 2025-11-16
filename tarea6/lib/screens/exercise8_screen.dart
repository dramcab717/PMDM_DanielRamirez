import 'package:flutter/material.dart';

class Exercise8Screen extends StatelessWidget {
  const Exercise8Screen({super.key});

  Widget _imagenConTexto(String ruta, String texto, {double width = 100}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            ruta,
            width: width,
            height: 80,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: width,
                height: 80,
                color: Colors.grey.shade300,
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.broken_image, size: 30, color: Colors.black54),
                    SizedBox(height: 4),
                    Text('No encontrada', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: width,
          child: Text(
            texto,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pirámide de Imágenes"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Nivel 1: 1 imagen
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _imagenConTexto('assets/images/montana.jpg', 'Montaña', width: 120),
                ],
              ),
              const SizedBox(height: 16),

              // Nivel 2: 2 imágenes
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _imagenConTexto('assets/images/playa.jpg', 'Playa', width: 100),
                  const SizedBox(width: 12),
                  _imagenConTexto('assets/images/ciudad.jpg', 'Ciudad', width: 100),
                ],
              ),
              const SizedBox(height: 16),

              // Nivel 3: 3 imágenes
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _imagenConTexto('assets/images/bosque.jpg', 'Bosque', width: 80),
                  const SizedBox(width: 8),
                  _imagenConTexto('assets/images/lago.jpg', 'Lago', width: 80),
                  const SizedBox(width: 8),
                  _imagenConTexto('assets/images/desierto.jpg', 'Desierto', width: 80),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
