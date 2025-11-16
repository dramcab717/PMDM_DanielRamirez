import 'package:flutter/material.dart';
import 'drawer/custom_drawer.dart';
import 'screens/screens.dart';
import 'theme/app_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Actividad Tema 1',
  theme: appTheme,   
  home: const HomePage(),
  routes: {
    '/info': (context) => const InfoScreen(),
    '/profile': (context) => const ProfileScreen(),
    '/gallery': (context) => const GalleryScreen(),
    '/icons': (context) => const IconsScreen(),
    '/images': (context) => const ImagesScreen(),
    '/fonts': (context) => const FontsScreen(),
    '/repeated_images': (context) => const RepeatedImagesScreen(),
    '/exercise8': (context) => const Exercise8Screen(),
    '/exercise9': (context) => const Exercise9Screen(),
    '/counter': (context) => const CounterScreen(),
    '/instagram': (context) => const InstagramCloneScreen(),
    '/tap_game': (context) => const TapGameScreen(),
    '/randomColors': (context) => const RandomColors(),
  },
);

  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Actividad Flutter Tema 1")),
      drawer: const CustomDrawer(),
      body: const Center(child: Text("Bienvenido al menú principal")),
    );
  }
}
