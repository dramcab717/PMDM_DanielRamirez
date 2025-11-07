import 'package:flutter/material.dart';

class InstagramCloneScreen extends StatelessWidget {
  const InstagramCloneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('daanii_1725'),
        backgroundColor: Colors.white,
        elevation: 1,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          // --- Sección superior (perfil + estadísticas)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/yo.jpg'),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      _StatColumn('7,850', 'Posts'),
                      _StatColumn('8.2M', 'Followers'),
                      _StatColumn('1,754', 'Following'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // --- Nombre y descripción
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Daniel Ramírez Cabello',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Desarrollador de aplicaciones multiplataforma'),
                Text('Cuenta de Viajes'),
                Text('🇪🇸 '),
                SizedBox(height: 8),
              ],
            ),
          ),

          // --- Botones de acción
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _ActionButton(text: 'Follow'),
                _ActionButton(text: 'Message'),
                _ActionButton(text: 'Email'),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // --- Historias destacadas
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              children: const [
                _StoryCircle('Tailandia'),
                _StoryCircle('China'),
                _StoryCircle('Madrid'),
                _StoryCircle('Canarias'),
                _StoryCircle('Málaga'),
              ],
            ),
          ),

          const Divider(),

          // --- Cuadrícula de imágenes (GridView)
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              children: List.generate(
                9,
                (index) => Image.network(
                  'https://picsum.photos/200?random=$index',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Widgets auxiliares
class _StatColumn extends StatelessWidget {
  final String number;
  final String label;

  const _StatColumn(this.number, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(number,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text(label),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String text;
  const _ActionButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}

class _StoryCircle extends StatelessWidget {
  final String label;
  const _StoryCircle(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://picsum.photos/100'),
          ),
          const SizedBox(height: 5),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
