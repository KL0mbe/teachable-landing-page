import 'package:flutter/material.dart';

class StartVideoButton extends StatelessWidget {
  final bool isPreview;
  const StartVideoButton({this.isPreview = false, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          isPreview ? const Color(0xFF04A59A) : const Color(0xFF94D0CB),
        ),
      ),
      child: Text(
        isPreview ? "Preview" : "Start",
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
