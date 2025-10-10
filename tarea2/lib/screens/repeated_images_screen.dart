import 'package:flutter/material.dart';

class RepeatedImagesScreen extends StatelessWidget {
  const RepeatedImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Imágenes Repetidas")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/img1.jpg", width: 100, height: 100),
              const SizedBox(width: 10),
              Image.network(
                  "https://picsum.photos/200/200?grayscale", // cargada desde internet
                  width: 100,
                  height: 100),
              const SizedBox(width: 10),
              Image.asset("assets/images/img1.jpg", width: 100, height: 100),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Local"),
              SizedBox(width: 80),
              Text("Internet"),
              SizedBox(width: 80),
              Text("Repetida"),
            ],
          ),
        ],
      ),
    );
  }
}
