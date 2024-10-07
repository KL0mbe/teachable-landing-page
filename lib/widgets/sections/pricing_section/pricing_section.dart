import 'package:flutter/material.dart';
import 'package:teachable_landing_page/constants.dart';
import 'package:teachable_landing_page/widgets/my_elevated_button.dart';
import 'package:teachable_landing_page/widgets/sections/pricing_section/widgets/more_less_button.dart';

class PricingSection extends StatefulWidget {
  const PricingSection({super.key});

  @override
  State<PricingSection> createState() => _PricingSectionState();
}

class _PricingSectionState extends State<PricingSection> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFF5F5F8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            const Text(
              "Choose a Pricing Option",
              style: kTitleStyleMedium,
            ),
            const SizedBox(height: 32),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Radio(
                    value: null,
                    groupValue: null,
                    onChanged: (value) {},
                    activeColor: const Color(0xFF04A59A),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "\$55",
                          style: kTitleStyleSmall,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "The Multi Orgasmic Man",
                          style: kTitleStyleSmall,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Course by Anzaro Mystic Arts",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF36414D),
                          ),
                        ),
                        const SizedBox(height: 8),
                        if (isExpanded) ...[
                          const Text(
                            "Lifetime access to on demand video lessons and a tree planted in our reforestation projects 🌳✨",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF36414D),
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                        MoreLessButton(
                          isExpanded: isExpanded,
                          onPressed: () {
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const MyElevatedButton(title: "Enroll now"),
          ],
        ),
      ),
    );
  }
}
