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

import '../../../../core/config/theme/app_color.dart';
import '../../../../core/constants/app_text_style.dart';
import '../../../auth/login/presentation/screens/login_screen.dart';

import 'dart:ui';

import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.08),
            borderRadius: BorderRadius.circular(45),
            border: Border.all(
              color: Colors.white24,
            ),
          ),
          child: Row(
            children: [
              /// Lock Circle
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

              const SizedBox(width: 20),

              /// Button
              Expanded(
                child: SizedBox(
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        LoginScreen.routeName,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color(0xFF53B175),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      "Get Started",
                      style: AppTextStyles.button.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 12),

              /// Arrow
              const Icon(
                Icons.keyboard_double_arrow_right,
                color: Colors.white54,
                size: 30,
              ),

              const SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }
}