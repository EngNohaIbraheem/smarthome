import 'package:flutter/material.dart';

import '../../../../../core/constants/assets.app.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Background Image
        Positioned.fill(
          child: Image.asset(
            AppAssets.loginBackground,
            fit: BoxFit.cover,
          ),
        ),

        /// Foreground Image
        Positioned.fill(
          child: Image.asset(
            AppAssets.loginForeground,
            fit: BoxFit.cover,
          ),
        ),

        /// Dark Overlay
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(.20),
                  Colors.black.withOpacity(.45),
                  Colors.black.withOpacity(.75),
                ],
              ),
            ),
          ),
        ),

        /// Screen Content
        Positioned.fill(
          child: child,
        ),
      ],
    );
  }
}