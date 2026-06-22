import 'package:flutter/material.dart';

class SignupLogo extends StatelessWidget {
  const SignupLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Image.asset(
          "assets/icons/logo.png",
          width: 55,
        ),

        const SizedBox(width: 16),

        const Text(
          "HomeSync",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 42,
          ),
        ),
      ],
    );
  }
}