import 'package:flutter/material.dart';

import 'package:cardowo/views/card/card_image.dart';

class ImageView extends StatelessWidget {
  final String path;
  const ImageView({Key? key, required this.path}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RotatedBox(
          child: Card(
            elevation: 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: CardImageGenerator.setImage(path),
            ),
          ),
          quarterTurns: 1,
        ),
      ),
    );
  }
}
