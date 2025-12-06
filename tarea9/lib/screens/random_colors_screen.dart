import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class RandomColors extends StatefulWidget {
  const RandomColors({super.key});

  @override
  State<RandomColors> createState() => _RandomColorsState();
}

class _RandomColorsState extends State<RandomColors> {
  int points = 0;
  late String randomName;
  late Color randomColor;
  late Timer _timer;

  final colorNames = ['azul', 'verde', 'naranja'];
  final colorHex = [
    const Color(0xFF0000FF),
    const Color(0xFF00FF00),
    const Color(0xFFFF914D),
  ];

  @override
  void initState() {
    super.initState();
    loadPoints();     // ⬅ cargar puntos guardados
    getRandomColor();
    getRandomName();
    startTimer();
  }

  // -------------------------
  // Cargar puntos guardados
  // -------------------------
  Future<void> loadPoints() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      points = prefs.getInt('color_game_points') ?? 0;
    });
  }

  // -------------------------
  // Guardar puntos
  // -------------------------
  Future<void> savePoints() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('color_game_points', points);
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        getRandomColor();
        getRandomName();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Juego Colores Aleatorios")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Puntos: $points',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                onGiftTap(randomName, randomColor);
              },
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    color: randomColor,
                  ),
                  Text(
                    randomName,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void getRandomColor() {
    Random random = Random();
    randomColor = colorHex[random.nextInt(3)];
  }

  void getRandomName() {
    Random random = Random();
    randomName = colorNames[random.nextInt(3)];
  }

  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color(0xFF0000FF)) return 'azul';
    if (hexColor == const Color(0xFF00FF00)) return 'verde';
    return 'naranja';
  }

  void onGiftTap(String name, Color color) {
    var colorToString = hexToStringConverter(color);

    setState(() {
      if (name == colorToString) {
        points++;
      } else {
        points--;
      }
    });

    savePoints();   // ⬅ guardar cambios
  }
}
