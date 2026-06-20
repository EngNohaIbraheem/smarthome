import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        AppAssets.splash,
        fit: BoxFit.cover,
      ),
    );
  }
}