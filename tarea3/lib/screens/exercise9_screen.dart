import 'package:flutter/material.dart';

class Exercise9Screen extends StatelessWidget {
  const Exercise9Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejercicio 9 - Helipuerto"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.yellow, // Color del helipuerto
            shape: BoxShape.circle, // Forma circular
            border: Border.all(color: Colors.black, width: 4),
          ),
          alignment: Alignment.center,
          child: const Text(
            'H',
            style: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

