import 'dart:io';

import 'package:flutter/material.dart';

class ImageDisplay extends StatelessWidget {
  final File? image;

  const ImageDisplay({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return image == null
        ? const Text('Nenhuma imagem selecionada.')
        : Image.file(
            image!,
            errorBuilder: (context, error, stackTrace) {
              return const Text('Erro ao carregar imagem.');
            },
          );
  }
}
