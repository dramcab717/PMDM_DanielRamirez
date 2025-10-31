import 'package:flutter/material.dart';
import 'drawer/custom_drawer.dart';
import 'screens/info_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/gallery_screen.dart';
import 'screens/icons_screen.dart';
import 'screens/images_screen.dart';
import 'screens/fonts_screen.dart';
import 'screens/repeated_images_screen.dart';
import 'screens/exercise8_screen.dart';
import 'screens/exercise9_screen.dart';
import 'screens/counter_screen.dart';
import 'screens/instagram_clone_screen.dart';

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
      theme: ThemeData(primarySwatch: Colors.blue),
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
