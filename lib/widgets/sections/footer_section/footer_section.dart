import 'package:flutter/material.dart';
import 'package:teachable_landing_page/widgets/sections/footer_section/widgets/footer_column.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2B3636),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const Text(
                  "© Anzaro Mystic Arts 2024",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                if (MediaQuery.of(context).size.width <= 500)
                  const FooterColumn(),
              ],
            ),
            if (MediaQuery.of(context).size.width > 500) const FooterColumn(),
          ],
        ),
      ),
    );
  }
}
