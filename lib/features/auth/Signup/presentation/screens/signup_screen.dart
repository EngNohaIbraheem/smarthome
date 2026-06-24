import 'package:flutter/material.dart';

import '../widgets/background_signup.dart';
import '../widgets/form_signup.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static const String routeName = "SignupScreen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [

          SignupBackground(),

          SafeArea(
            child: SignupForm(),
          ),
        ],
      ),
    );
  }
}