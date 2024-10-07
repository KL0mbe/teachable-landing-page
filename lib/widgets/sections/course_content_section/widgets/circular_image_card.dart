import 'package:flutter/material.dart';
import 'package:teachable_landing_page/constants.dart';

class CircularImageCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const CircularImageCard({
    required this.image,
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 298,
      child: Column(
        children: [
          // change size if too small perhaps in new file.
          Image.asset(image, width: 298, height: 298),
          Text(title, style: kTitleStyleMedium),
          Text(description, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
