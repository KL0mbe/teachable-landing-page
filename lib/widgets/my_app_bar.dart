import 'package:flutter/material.dart';
import 'package:teachable_landing_page/widgets/my_text_button.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF2B3636),
      title: Row(
        children: [
          const Spacer(),
          Image.asset(
            "images/anzaro.png",
            width: 250,
            height: 60,
          ),
          const Spacer(flex: 2),
          const MyTextButton(title: "Login"),
          const Spacer(),
        ],
      ),
    );
  }
}
