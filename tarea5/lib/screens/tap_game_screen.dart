import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import '../drawer/custom_drawer.dart';

class TapGameScreen extends StatefulWidget {
  const TapGameScreen({super.key});

  @override
  State<TapGameScreen> createState() => _TapGameScreenState();
}

class _TapGameScreenState extends State<TapGameScreen> {
  int puntos = 0;
  double x = 100;
  double y = 100;
  bool visible = true;
  late Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        visible = false;
        puntos -= 2;
      });

      Future.delayed(const Duration(milliseconds: 400), cambiarPosicion);
    });
  }

  void cambiarPosicion() {
    final random = Random();

    setState(() {
      visible = true;
      x = random.nextDouble() * 300;
      y = random.nextDouble() * 500;
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void sumarPunto() {
    setState(() {
      puntos++;
      cambiarPosicion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(title: const Text("Juego de Tap")),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Text("Puntos: $puntos",
                style: const TextStyle(fontSize: 26)),
          ),
          if (visible)
            Positioned(
              top: y,
              left: x,
              child: GestureDetector(
                onTap: sumarPunto,
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset("assets/images/target.png"),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
