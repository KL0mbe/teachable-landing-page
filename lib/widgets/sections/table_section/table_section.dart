import 'package:flutter/material.dart';
import 'package:teachable_landing_page/constants.dart';
import 'package:teachable_landing_page/widgets/sections/table_section/widgets/my_table.dart';

class TableSection extends StatefulWidget {
  const TableSection({super.key});

  @override
  State<TableSection> createState() => _TableSectionState();
}

class _TableSectionState extends State<TableSection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Example Curriculum",
          style: kTitleStyleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        const MyTable(
          previewMap: {
            0: true,
            1: true,
          },
          title: "The Journey Begins",
          rows: [
            "Becoming Multi Orgasmic (8:42)",
            "The Different Types of Male Orgasm (9:05)",
            "Self-Practice & Conscious Masturbation (9:08)",
            "Semen Retention & Abstaining (10:06)",
            "Anatomy Part 1: Pelvic Floor Muscles (9:29)",
            "Kegels & Free App Access (10:35)",
            "Anatomy Part 2: The semen & male reproductive system (4:33)",
          ],
        ),
        const SizedBox(height: 16),
        const MyTable(
          title: "The Orgasmic Breath",
          rows: [
            "The Deep Breath (10:29)",
            "Orgasmic Flow Breathing (7:45)",
            "Testicle Breathing (9:44)",
          ],
        ),
        const SizedBox(height: 16),
        const MyTable(
          title: "Opening The Hips",
          rows: [
            "It's all in the hips (6:13)",
            "Hip Stretch Flow (14:03)",
            "Hip Stretch Flow 2.0 with PNF (6:20)",
            "Groin Fitness (8:57)",
            "Kundalini Dance (10:45)",
          ],
        ),
        if (isExpanded) ...[
          const SizedBox(height: 16),
          const MyTable(
            title: "🍆 Lingam Exercises",
            rows: [
              "Introduction to Lingam Exercises (2:39)",
              "Sharpening The Knife (4:51)",
              "Shifting The Gear (5:40)",
              "Scrotal Tug (3:39)",
              "Squeezing Method (8:39)",
            ],
          ),
          const SizedBox(height: 16),
          const MyTable(
            title: "Sexual Energy Awareness",
            rows: [
              "Increasing Energy Awareness (8:05)",
              "Working with energy (10:51)",
              "[Optional] The Chakras & Human Energy Systems (11:47)",
              "[Meditation] Cosmic Flow (7:00)",
              "[Meditation] The Divine Lotus Meditation (1:00)",
              "[Free App] Check out my app Anzaro Quantum Healing (1:57)",
              "Sexual Energy Transmutation (10:52)",
              "Why you need to quit porn (Part 1) (11:40)",
              "How to quit porn (Part 2) [Exercise] (10:32)",
              "Shadow Work (12:34)",
              "Psychedelics for Shadow work (15:11)",
            ],
          ),
          const SizedBox(height: 16),
          const MyTable(
            title: "The Path Of Mastery",
            rows: [
              "A real life PNEO (9:01)",
              "Kegel Exercises 2.0 (9:00)",
              "Orgasmic Flow 2.0 & 3.0 (12:39)",
              "Engaging with a partner (5:23)",
              "Embrace the Journey (9:41)",
            ],
          ),
        ],
        const SizedBox(height: 32),
        IconButton.outlined(
          onPressed: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          icon: Icon(isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
        ),
      ],
    );
  }
}
