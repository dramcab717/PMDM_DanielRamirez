import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Info")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Daniel Ramirez Cabello",
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "https://github.com/dramcab717/PMDM_DanielRamirez.git",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontFamily: 'Courier', // fuente tipo monoespaciada
              ),
            ),
          ],
        ),
      ),
    );
  }
}
