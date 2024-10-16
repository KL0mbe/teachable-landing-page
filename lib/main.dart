import 'package:flutter/material.dart';
import 'package:teachable_landing_page/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'The Multi Orgasmic Man | Anzaro Mystic Arts',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
