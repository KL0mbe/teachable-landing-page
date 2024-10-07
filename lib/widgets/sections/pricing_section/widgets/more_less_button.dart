import 'package:flutter/material.dart';

class MoreLessButton extends StatefulWidget {
  final bool isExpanded;
  final void Function() onPressed;
  const MoreLessButton(
      {required this.isExpanded, required this.onPressed, super.key});

  @override
  State<MoreLessButton> createState() => _MoreLessButtonState();
}

class _MoreLessButtonState extends State<MoreLessButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: const ButtonStyle(
        padding: WidgetStatePropertyAll(EdgeInsets.all(0)),
      ),
      onPressed: widget.onPressed,
      label: Text(
        widget.isExpanded ? "Less" : "More",
        style: const TextStyle(
          fontSize: 20,
          color: Color(0xFF04A59A),
        ),
      ),
      icon: Icon(
        widget.isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
        color: const Color(0xFF04A59A),
      ),
    );
  }
}
