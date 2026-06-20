import 'package:flutter/material.dart';
import 'package:newfashionstore/features/onboarding/presentation/widgets/onboarding_indecator.dart';
import '../../auth/login/presentation/screens/login_screen.dart';
import '../../home/presentation/screens/home_screen.dart';
import 'widgets/onboarding_background.dart';
import 'widgets/dark_overlay.dart';
import 'widgets/get_started_button.dart';


import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../widgets/background_image.dart';
import '../widgets/dark_overlay.dart';
import '../widgets/get_started_button.dart';
import '../widgets/title_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const String routeName = "OnboardingScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [

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