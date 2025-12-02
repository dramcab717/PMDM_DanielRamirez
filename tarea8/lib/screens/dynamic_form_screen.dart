import 'package:flutter/material.dart';

class DynamicFormScreen extends StatefulWidget {
  const DynamicFormScreen({super.key});

  @override
  State<DynamicFormScreen> createState() => _DynamicFormScreenState();
}

class _DynamicFormScreenState extends State<DynamicFormScreen> {
  bool likesTravel = false;

  // Actividades viaje
  bool plane = false;
  bool train = false;
  bool car = false;

  // Actividades en casa
  bool reading = false;
  bool gaming = false;
  bool cooking = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Formulario dinámico")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SwitchListTile(
              title: const Text("¿Te gusta viajar?"),
              value: likesTravel,
              onChanged: (value) {
                setState(() {
                  likesTravel = value;
                });
              },
            ),

            const SizedBox(height: 20),

            // VIAJAR
            if (likesTravel) ...[
              const Text("Elige tus formas preferidas de viajar:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

              CheckboxListTile(
                title: const Text("Avión"),
                value: plane,
                onChanged: (v) => setState(() => plane = v!),
              ),
              CheckboxListTile(
                title: const Text("Tren"),
                value: train,
                onChanged: (v) => setState(() => train = v!),
              ),
              CheckboxListTile(
                title: const Text("Coche"),
                value: car,
                onChanged: (v) => setState(() => car = v!),
              ),
            ],

            // CASA
            if (!likesTravel) ...[
              const Text("Actividades en casa:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

              CheckboxListTile(
                title: const Text("Leer libros"),
                value: reading,
                onChanged: (v) => setState(() => reading = v!),
              ),
              CheckboxListTile(
                title: const Text("Videojuegos"),
                value: gaming,
                onChanged: (v) => setState(() => gaming = v!),
              ),
              CheckboxListTile(
                title: const Text("Cocinar"),
                value: cooking,
                onChanged: (v) => setState(() => cooking = v!),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
