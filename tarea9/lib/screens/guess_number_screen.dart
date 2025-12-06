import 'package:flutter/material.dart';
import 'dart:math';

class GuessNumberScreen extends StatefulWidget {
  const GuessNumberScreen({super.key});

  @override
  State<GuessNumberScreen> createState() => _GuessNumberScreenState();
}

class _GuessNumberScreenState extends State<GuessNumberScreen> {
  final TextEditingController controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final int secretNumber = Random().nextInt(100) + 1;

  String message = "";

  void checkNumber() {
    if (controller.text.isEmpty) return;

    int userNumber = int.parse(controller.text);

    setState(() {
      if (userNumber < secretNumber) {
        message = "❗ El número es MAYOR";
      } else if (userNumber > secretNumber) {
        message = "❗ El número es MENOR";
      } else {
        message = "🎉 ¡Correcto! Has acertado el número.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Adivina el número")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                "Adivina el número (1 - 100)",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              TextFormField(
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Introduce un número",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Introduce un número";
                  }
                  int? number = int.tryParse(value);
                  if (number == null || number < 1 || number > 100) {
                    return "Debe ser entre 1 y 100";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    checkNumber();
                  }
                },
                child: const Text("Comprobar"),
              ),

              const SizedBox(height: 20),

              Text(
                message,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
