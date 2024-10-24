import 'package:flutter/material.dart';

class PhotosGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemCount: 9, // Número de imágenes
      itemBuilder: (context, index) {
        return Image.asset('assets/images/photo$index.jpg', fit: BoxFit.cover);
      },
    );
  }
}
