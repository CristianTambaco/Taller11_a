// 1
// Paso 2.1: Archivo main.dart
// Este es el punto de entrada de tu aplicación. Aquí configuramos la app y definimos qué pantalla se muestra al inicio.
// Ubicación: lib/main.dart




import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Quita el banner de "DEBUG" en la esquina
      debugShowCheckedModeBanner: false,

      //Titulo de la aplicación
      title: 'Mi Portafolio',
      
      //Tema de colores de la app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3:true,
      ),

      // Pantalla inicial
      home: const HomeScreen(),      
    );
  }
}