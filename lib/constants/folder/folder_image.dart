import 'package:flutter/material.dart';

class FolderImage extends StatelessWidget {
  const FolderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(230, 260, 0, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          'assets/images/folder_image1.jpg',
          height: 150,
        ),
      ),
    );
  }
}
