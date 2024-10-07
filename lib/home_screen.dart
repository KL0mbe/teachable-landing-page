import 'package:flutter/material.dart';
import 'package:teachable_landing_page/widgets/sections/course_content_section/course_content_section.dart';
import 'package:teachable_landing_page/widgets/sections/footer_section/footer_section.dart';
import 'package:teachable_landing_page/widgets/sections/hero_section/hero_section.dart';
import 'package:teachable_landing_page/widgets/sections/introduction_section/introduction_section.dart';
import 'package:teachable_landing_page/widgets/sections/pricing_section/pricing_section.dart';
import 'package:teachable_landing_page/widgets/sections/table_section/table_section.dart';
import 'package:teachable_landing_page/widgets/my_app_bar.dart';
import 'package:teachable_landing_page/widgets/sections/news_letter_section/news_letter_section.dart';
import 'package:teachable_landing_page/widgets/sections/tree_plant_section/tree_plant_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(),
            SizedBox(height: 64),
            IntroductionSection(),
            SizedBox(height: 100),
            CourseContentSection(),
            SizedBox(height: 64),
            TableSection(),
            SizedBox(height: 64),
            PricingSection(),
            SizedBox(height: 64),
            TreePlantSection(),
            SizedBox(height: 64),
            NewsLetter(),
            SizedBox(height: 64),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
