import 'package:flutter/material.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          "SIGN UP",
          style: TextStyle(
            color: Colors.white,
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 12),

        Text(
          "Looks like you don't have an account.\nLet's create a new account for you.",
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}