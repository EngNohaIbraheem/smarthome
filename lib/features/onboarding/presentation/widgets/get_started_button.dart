// import 'package:flutter/material.dart';
//
// class OnboardingButton extends StatelessWidget {
//   final VoidCallback onPressed;
//
//   const OnboardingButton({super.key, required this.onPressed});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width * 0.7,
//       height: 60,
//       child: OutlinedButton(
//         onPressed: onPressed,
//         style: OutlinedButton.styleFrom(
//           side: const BorderSide(color: Colors.grey, width: 1.5),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30),
//           ),
//           backgroundColor: Colors.grey,
//         ),
//         child: const Text(
//           "Shopping now",
//           style: TextStyle(color: Colors.white, fontSize: 18),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(45),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 12,
          sigmaY: 12,
        ),
        child: Container(
          height: 82,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.08),
            borderRadius: BorderRadius.circular(45),
            border: Border.all(
              color: Colors.white24,
            ),
          ),
          child: Row(
            children: [

              const SizedBox(width: 8),

              Container(
                width: 66,
                height: 66,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
              ),

              const SizedBox(width: 24),

              const Expanded(
                child: Text(
                  "Get Started",
                  style: AppTextStyles.button,
                ),
              ),

              const Icon(
                Icons.keyboard_double_arrow_right,
                color: Colors.white54,
                size: 30,
              ),

              const SizedBox(width: 20),
            ],
          ),
        ),
      ),
    );
  }
}