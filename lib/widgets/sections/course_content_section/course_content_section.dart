import 'package:flutter/material.dart';
import 'package:teachable_landing_page/constants.dart';
import '../course_content_section/widgets/circular_image_card.dart';

class CourseContentSection extends StatelessWidget {
  const CourseContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "The Course Content",
          style: kTitleStyleLarge,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 32),
        Wrap(
          // mainAxisAlignment: MainAxisAlignment.center,
          spacing: 32,
          runSpacing: 32,
          children: [
            CircularImageCard(
              image: "images/circular1.png",
              title: "Theory",
              description:
                  "A lot of fundamental knowledge of Anatomy, Breath- & "
                  "Energywork so you can learn and get a deeper understanding "
                  "of what it means to be multi-orgasmic as well how to become it.",
            ),
            CircularImageCard(
              image: "images/circular2.png",
              title: "Exercises",
              description:
                  "Yoga, workout and dancing exercises that will help you "
                  "open and strengthen your body so it can maintain and "
                  "direct that immense power of your sexual energy",
            ),
            CircularImageCard(
              image: "images/circular3.png",
              title: "And More",
              description:
                  "Breathwork, Meditations and exercises for your 🍆, which "
                  "will give you all the tools for you to become multi-orgasmic",
            ),
          ],
        ),
      ],
    );
  }
}
