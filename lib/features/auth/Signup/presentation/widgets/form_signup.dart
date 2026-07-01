import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../../../../core/widgets/social_button.dart';

import '../../../../Home/presentation/screens/home_screen.dart';
import '../../../login/presentation/widgets/guest_button.dart';
import '../../../login/presentation/widgets/social_section.dart';
import '../screens/signup_screen.dart';
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
            //  controller: cubit.emailController,
            hintText: 'Name',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            // validator: (value) {
            //   if (value == null || value.trim().isEmpty) {
            //     return 'Please enter your email';
            //   }
            //
            //   final emailRegex = RegExp(
            //     r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
            //   );
            //
            //   if (!emailRegex.hasMatch(value.trim())) {
            //     return 'Please enter a valid email';
            //   }
            //
            //   return null;
            // },
            hint: '',
          ),
          const SizedBox(height: 20),
          CustomTextField(
            //controller: cubit.emailController,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            // validator: (value) {
            //   if (value == null || value.trim().isEmpty) {
            //     return 'Please enter your email';
            //   }
            //
            //   final emailRegex = RegExp(
            //     r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
            //   );
            //
            //   if (!emailRegex.hasMatch(value.trim())) {
            //     return 'Please enter a valid email';
            //   }
            //
            //   return null;
            // },
            hint: '',
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hintText: 'Password',
            obscureText: true,
            textInputAction: TextInputAction.done,
            suffixIcon: IconButton(
              onPressed: () {
                // أضف الكود هنا إذا أردت تنفيذ شيء عند الضغط
              },
              icon: const Icon(Icons.visibility),
            ),
            hint: '',
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
            title: 'Loginn ',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            onPressed: () {
              Navigator.pushNamed(
                context,
                HomeScreen.routeName,
              );
            },
            text: '',
          ),
          const SizedBox(height: 24),
          PrimaryButton(
            title: 'Signup',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            onPressed: () {
              Navigator.pushNamed(
                context,
                SignupScreen.routeName,
              );
            },
            text: '',
          ),
          const SizedBox(height: 18),
          const SocialSection(),
          const SizedBox(height: 18),
          const SocialSection(),
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
