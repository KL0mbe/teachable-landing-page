import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final String title;
  const MyTextButton({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
