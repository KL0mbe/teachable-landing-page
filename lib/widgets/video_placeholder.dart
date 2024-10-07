import 'package:flutter/material.dart';

class VideoPlaceholder extends StatelessWidget {
  const VideoPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "images/placeholder.png",
      width: 960,
      height: 540,
      fit: BoxFit.fill,
    );
  }
}
