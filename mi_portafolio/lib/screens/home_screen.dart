import 'package:flutter/material.dart';
import '../widgets/proyecto_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Color de fondo de la pantalla
      backgroundColor: Colors.grey[100],

      //Barra superior
      appBar: AppBar(
        title: const Text('Mi portafolio'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      //Contenido principal
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Titulo de seccion
            Text(
              'Mis Proyectos',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ), //TextStyle
            ), //Text

            const SizedBox(height: 16),

            //Aqui va la tarjeta del proyecto
            const ProyectoCard(),

          ],
        ),
      ),
    );
  }
}