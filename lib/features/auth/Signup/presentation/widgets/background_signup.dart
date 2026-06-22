import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class SignupBackground extends StatelessWidget {
  const SignupBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Background Image
        Positioned.fill(
          child: Image.asset(
            "assets/images/background.png",
            fit: BoxFit.cover,
          ),
        ),

        /// Second Image
        Positioned.fill(
          child: Image.asset(
            "assets/images/foreground.png",
            fit: BoxFit.cover,
          ),
        ),

        /// Dark Overlay
        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(.45),
          ),
        ),
      ],
    );
  }
}