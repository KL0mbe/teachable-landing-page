import 'package:flutter/material.dart';
import 'package:teachable_landing_page/constants.dart';
import 'package:teachable_landing_page/widgets/my_elevated_button.dart';
import '../news_letter_section/widgets/my_text_field.dart';

class NewsLetter extends StatefulWidget {
  const NewsLetter({super.key});

  @override
  State<NewsLetter> createState() => _NewsLetterState();
}

class _NewsLetterState extends State<NewsLetter> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Let’s keep in touch",
          style: kTitleStyleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        const Text(
          "Subscribe to the mailing list and receive the latest updates",
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF36414D),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Email Address",
              style: TextStyle(
                color: Color(0xFF6A6D7C),
                fontSize: 18,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width > 510 ? 500 : 250,
              child: const MyTextField(),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: MediaQuery.of(context).size.width > 510 ? 500 : 250,
              child: Row(
                children: [
                  Checkbox(
                    activeColor: Colors.pinkAccent,
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                  ),
                  const Flexible(
                    child: Text(
                      "By clicking this checkbox, you consent to receiving emails from this school or course",
                      style: TextStyle(
                        color: Color(0xFF6A6D7C),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 32),
        const MyElevatedButton(title: "Subscribe"),
        const SizedBox(height: 32),
        const Text(
          "We respect your privacy.",
          style: TextStyle(
            color: Color(0xFF36414D),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
