import 'package:flutter/material.dart';

class StoriesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _StoryWidget(imagePath: 'assets/images/story1.jpg', label: 'Voleibol'),
          _StoryWidget(imagePath: 'assets/images/story2.jpg', label: 'Amigos'),
          _StoryWidget(imagePath: 'assets/images/story3.jpg', label: 'Videojuegos'),
          _StoryWidget(imagePath: 'assets/images/story1.jpg', label: 'Programación'),
          _StoryWidget(imagePath: 'assets/images/story2.jpg', label: 'Balatro'),
          _StoryWidget(imagePath: 'assets/images/story3.jpg', label: 'Nuevo'),
        ],
      ),
    );
  }
}

class _StoryWidget extends StatelessWidget {
  final String imagePath;
  final String label;

  const _StoryWidget({required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
