import 'package:flutter/material.dart';

class ProyectoCard extends StatelessWidget {
  const ProyectoCard({super.key});

  @override
  Widget build(BuildContext context) {
    // ===========================================
    // WIDGET 1: Container
    // Es una "caja" que contiene otros widgets
    // Permite agregar color, bordes, padding, etc.
    // ===========================================
    return Container(
      // Espacio INTERNO (entre el borde y el contenido)
      padding: const EdgeInsets.all(20),
      
      // Decoración del contenedor
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        // Sombra para dar efecto de elevación
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      
      // ===========================================
      // WIDGET 2: Column
      // Organiza widgets de arriba hacia abajo
      // ===========================================
      child: Column(
        // Alinear contenido a la izquierda
        crossAxisAlignment: CrossAxisAlignment.start,
        // Ajustar altura al contenido (no expandir)
        mainAxisSize: MainAxisSize.min,
        children: [
          // ===========================================
          // WIDGET 3: Text
          // Muestra texto en pantalla
          // ===========================================
          
          // Título del proyecto
          Text(
            'Sistema de Gestión de Biblioteca', // 👈 CAMBIA ESTE TEXTO
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue[800],
            ),
          ),
          
          const SizedBox(height: 8),
          
          // Descripción del proyecto
          Text(
            'Aplicación web para gestionar préstamos de libros, '
            'registro de usuarios y catálogo digital. Desarrollado '
            'como proyecto final del módulo de programación.', // 👈 CAMBIA ESTE TEXTO
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              height: 1.5, // Espacio entre líneas
            ),
          ),
          
          const SizedBox(height: 16),
          
          // Tecnologías usadas (dentro de un Container con estilo)
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Flutter • Dart • Firebase', // 👈 CAMBIA ESTE TEXTO
              style: TextStyle(
                fontSize: 12,
                color: Colors.blue[700],
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          
          const SizedBox(height: 12),
          
          // Estado del proyecto
          Text(
            'Estado: En desarrollo', // 👈 CAMBIA ESTE TEXTO
            style: TextStyle(
              fontSize: 12,
              color: Colors.green[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
