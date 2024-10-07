import 'package:flutter/material.dart';
import 'package:teachable_landing_page/constants.dart';
import 'package:teachable_landing_page/widgets/video_placeholder.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Allow me to introduce myself",
          style: kTitleStyleLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 64),
        const VideoPlaceholder(),
        const SizedBox(height: 100),
        const Text(
          "Synergizing the Mind, Body & Spirit",
          style: kTitleStyleLarge,
          textAlign: TextAlign.center,
        ),
        const Text(
          "A Multi Orgasmic man is in full balance within the body, mind & spirit complex.",
          style: TextStyle(fontSize: 23),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 64),
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
            ),
            children: [
              TextSpan(
                  text:
                      "Learn to uncover the deepest parts of yourself and set your"),
              TextSpan(
                text: " soul ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              TextSpan(
                text: "free too live the life you came here to live",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
