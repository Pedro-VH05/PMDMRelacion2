import 'package:flutter/material.dart';

class PhotosGrid extends StatelessWidget {
  const PhotosGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Fila de iconos
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.grid_on, size: 24),
              Icon(Icons.assignment_ind_outlined, size: 24), 
            ],
          ),
        ),
        const SizedBox(height: 8),
        // Cuadrícula de fotos
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemCount: 9, // Número de imágenes
          itemBuilder: (context, index) {
            return Image.asset('assets/images/photo$index.jpeg', fit: BoxFit.cover);
          },
        ),
      ],
    );
  }
}
