import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HyperLink extends StatefulWidget {
  final String text;
  const HyperLink({required this.text, super.key});

  @override
  State<HyperLink> createState() => _HyperLinkState();
}

class _HyperLinkState extends State<HyperLink> {
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        final Uri url =
            Uri.parse("https://www.youtube.com/watch?v=tTOJe7BNMdQ");
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      style: ButtonStyle(
        minimumSize:
            const WidgetStatePropertyAll(Size.zero), // Removes default min size
        padding: const WidgetStatePropertyAll(EdgeInsets.zero),
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        foregroundColor: WidgetStateProperty.resolveWith(
          (state) => state.contains(WidgetState.hovered)
              ? Colors.blue[300]
              : Colors.blue,
        ),
      ),
      child: Text(
        widget.text,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
