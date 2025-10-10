import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _increment() => setState(() => _counter++);
  void _decrement() => setState(() => _counter--);
  void _reset() => setState(() => _counter = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contador Avanzado")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Valor actual:", style: Theme.of(context).textTheme.headlineMedium),
            Text('$_counter', style: const TextStyle(fontSize: 50)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: _decrement, icon: const Icon(Icons.remove), color: Colors.red),
                IconButton(onPressed: _reset, icon: const Icon(Icons.refresh), color: Colors.blue),
                IconButton(onPressed: _increment, icon: const Icon(Icons.add), color: Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
