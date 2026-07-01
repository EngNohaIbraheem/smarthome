import 'package:flutter/material.dart';

import '../../../Signup/presentation/widgets/signup_logo.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SignupLogo(),

        Text(
          'Log into',
          style: TextStyle(fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        Text(
          'your account',
          style: TextStyle(fontSize: 28,
              color: Colors.white,

              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
