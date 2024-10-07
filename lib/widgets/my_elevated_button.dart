import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final String title;
  const MyElevatedButton({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
          style: const ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 22)),
            backgroundColor: WidgetStatePropertyAll(Color(0xFF04A59A)),
          ),
          onPressed: () {},
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )),
    );
  }
}
