import 'package:flutter/material.dart';

class GuestButton extends StatelessWidget {
  const GuestButton({super.key, required String title, required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: const Text(
          "CONTINUE AS GUEST",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}