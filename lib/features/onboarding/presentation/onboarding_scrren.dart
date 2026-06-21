import 'package:flutter/material.dart';
import 'package:smarthome/features/onboarding/presentation/widgets/title_text.dart';
import 'widgets/onboarding_background.dart';
import 'widgets/dark_overlay.dart';
import 'widgets/get_started_button.dart';



class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const String routeName = "OnboardingScreen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [

          BackgroundImage(),

          DarkOverlay(),

          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [

                  SizedBox(height: 60),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: TitleText(),
                  ),

                  Spacer(),

                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: GetStartedButton(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}