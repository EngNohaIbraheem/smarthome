import 'package:flutter/material.dart';

import '../../../../../core/constants/assets.app.dart';
import '../../../../../core/widgets/social_button.dart';

import 'driver_text.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DividerText(text: 'OR'),

        const SizedBox(height: 24),
        SocialButton(
          title: 'Sign Up with Apple',
          onPressed: () {}, icon: '', imagePath: '',
        ),
        SocialButton(
          title: 'Continue with Google',
          imagePath: 'assets/images/google.png',
          onPressed: () {}, icon: '',
        ),
        const SizedBox(height: 16),
        SocialButton(
          title: 'Sign Up with Google',
          onPressed: () {}, icon: ''
            '', imagePath: '',
        ),
      ],
    );
  }
}