import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Row(
          children: [

            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: const Color(0xffB5EB39),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.home_work,
                color: Colors.black,
              ),
            ),

            const SizedBox(width: 10),

            const Text(
              "HomeSync",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),

        const SizedBox(height: 30),

        const Text(
          "SIGN IN",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          "Looks like you don't have an account.\nLet's create a new account for you.",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}