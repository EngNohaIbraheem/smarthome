import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';

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