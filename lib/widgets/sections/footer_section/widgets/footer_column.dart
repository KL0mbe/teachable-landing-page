import 'package:flutter/material.dart';
import 'package:teachable_landing_page/widgets/my_text_button.dart';

class FooterColumn extends StatelessWidget {
  const FooterColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyTextButton(title: "Terms of Use"),
        MyTextButton(title: "Privacy Policy"),
        SizedBox(height: 8),
        MyTextButton(title: "Teach Online with"),
        Text(
          "Teachable",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
