import 'package:flutter/material.dart';
import '../widgets/proyecto_card.dart';
import '../widgets/proyecto_expandible.dart';
import '../widgets/proyecto_card_mini.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Mi Portafolio'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      // Usar ListView para scroll
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mis Proyectos',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // 2 columnas
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.85, // Proporción ancho/alto
                children: const [
                  ProyectoCardMini(titulo: 'Proyecto 1', icono: Icons.web),
                  ProyectoCardMini(
                      titulo: 'Proyecto 2', icono: Icons.phone_android),
                  ProyectoCardMini(
                      titulo: 'Proyecto 3', icono: Icons.shopping_cart),
                  ProyectoCardMini(titulo: 'Proyecto 4', icono: Icons.games),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
