import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

class RandomColors extends StatefulWidget {
  const RandomColors({super.key});

  @override
  State<RandomColors> createState() => _RandomColorsState();
}

class _RandomColorsState extends State<RandomColors> {
  int points = 0;

  late int randomIndexColor;
  late int randomIndexName;

  late Color randomColor;
  late String randomName;

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
    getRandomIndexes();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        getRandomIndexes();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void getRandomIndexes() {
    Random random = Random();
    randomIndexColor = random.nextInt(3);
    randomIndexName = random.nextInt(3);

    randomColor = colorHex[randomIndexColor];
    randomName = colorNames[randomIndexName];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Colores Aleatorios"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Puntos: $points',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Center(
            child: GestureDetector(
              onTap: onGiftTap,
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

  void onGiftTap() {
    setState(() {
      if (randomIndexColor == randomIndexName) {
        points++;
      } else {
        points--;
      }
    });
  }
}
