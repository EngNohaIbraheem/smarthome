import 'package:flutter/material.dart';

import '../../../../core/constants/app_text_style.dart';



class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Full Control\nFor Your\nSmart\nHome",
      style: AppTextStyles.title,
    );
  }
}