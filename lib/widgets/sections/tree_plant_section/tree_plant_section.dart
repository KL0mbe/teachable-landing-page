import 'package:flutter/material.dart';
import 'package:teachable_landing_page/constants.dart';
import '../tree_plant_section/widgets/hyper_link.dart';
import 'package:teachable_landing_page/widgets/video_placeholder.dart';

class TreePlantSection extends StatelessWidget {
  const TreePlantSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "A Tree will be planted 🌳",
          style: kTitleStyleMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        Text(
          "With the enrolment in this course, a tree will be planted in one of our reforestation projects ✨",
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF36414D),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        VideoPlaceholder(),
        SizedBox(height: 32),
        Text(
          "We have already planted over 7000 trees and we are going to plant millions together 💚🌳✨",
          style: kTitleStyleSmall,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Watch latest Tree Update ",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF36414D),
              ),
              textAlign: TextAlign.center,
            ),
            HyperLink(text: "Video in YouTube"),
          ],
        ),
      ],
    );
  }
}
