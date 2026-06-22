import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../../../../core/widgets/social_button.dart';

import '../../../login/presentation/widgets/guest_button.dart';
import 'header_signup.dart';
import 'signup_logo.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          const SignupLogo(),

          const SizedBox(height: 35),

          const SignupHeader(),

          const SizedBox(height: 30),

          CustomTextField(
            hint: "Name",
          ),

          const SizedBox(height: 20),

          CustomTextField(
            hint: "Email",
          ),

          const SizedBox(height: 20),

          CustomTextField(
            hint: "Password",
          ),

          const SizedBox(height: 24),

          Text(
            "By selecting Create Account below, I agree to Terms of Service & Privacy Policy",
            style: TextStyle(
              color: Colors.white.withOpacity(.9),
              height: 1.5,
            ),
          ),

          const SizedBox(height: 35),

          PrimaryButton(
            text: "CREATE ACCOUNT",
            onPressed: () {}, title: '',
          ),

          const SizedBox(height: 18),

          PrimaryButton(
            text: "LOGIN",
            onPressed: () {}, title: '',
          ),

          const SizedBox(height: 30),

          Row(
            children: [

              const Expanded(child: Divider(color: Colors.white54)),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  "OR",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),

              const Expanded(child: Divider(color: Colors.white54)),
            ],
          ),

          const SizedBox(height: 28),

          SocialButton(
            title: "Sign Up with Google",
            icon: "assets/icons/google.png",
            onPressed: () {},
          ),

          const SizedBox(height: 18),

          SocialButton(
            title: "Sign Up with Apple",
            icon: "assets/icons/apple.png",
            onPressed: () {},
          ),

          const SizedBox(height: 40),

          GuestButton(
            title: "CONTINUE AS A GUEST",
            onPressed: () {},
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}