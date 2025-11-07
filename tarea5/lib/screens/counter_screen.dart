import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _veces = 0;

  void _incrementar() {
    setState(() {
      _veces++;
    });
  }

  void _decrementar() {
    setState(() {
      _veces--;
    });
  }

  void _puestaacero() {
    setState(() {
      _veces = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Contador de clics',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w900,
              color: Colors.white, // Color del texto para que se vea bien
            ),
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Stack( // Usamos Stack para superponer el contenido y los botones
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Has pulsado el botón:',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 40),
                Text(
                  _veces == 1 ? "$_veces vez" : "$_veces veces",
                  style: const TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          Align( // Colocamos los botones en la esquina inferior derecha
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(20.0), // Espacio alrededor de los botones
              child: Column(
                mainAxisSize: MainAxisSize.min, // La columna solo ocupa el espacio necesario
                children: [
                  FloatingActionButton(
                    heroTag: 'incrementar', // Se necesita un heroTag para múltiples FABs
                    onPressed: _incrementar,
                    tooltip: 'Incrementar',
                    backgroundColor: Colors.green[300],
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(height: 16),
                  FloatingActionButton(
                    heroTag: 'decrementar',
                    onPressed: _decrementar,
                    tooltip: 'Decrementar',
                    backgroundColor: Colors.red[300],
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(height: 16),
                  FloatingActionButton(
                    heroTag: 'puestaacero',
                    onPressed: _puestaacero,
                    tooltip: 'Puesta a cero',
                    backgroundColor: Colors.grey[400],
                    child: const Icon(Icons.refresh),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}