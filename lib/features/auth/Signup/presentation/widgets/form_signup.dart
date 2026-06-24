import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../../../../core/widgets/social_button.dart';

import '../../../login/presentation/screens/login_screen.dart';
import '../../../login/presentation/widgets/guest_button.dart';
import '../../../login/presentation/widgets/social_button.dart';
import '../screens/signup_screen.dart';
import 'header_signup.dart';
import 'signup_logo.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    /// final cubit = context.read<SignupCubit>();

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
            // controller: cubit.emailController,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your email';
              }

              final emailRegex = RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              );

              if (!emailRegex.hasMatch(value.trim())) {
                return 'Please enter a valid email';
              }

              return null;
            },
            hint: '',
          ),
          const SizedBox(height: 30),

          CustomTextField(
            // controller: cubit.emailController,
            hintText: 'Name',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your email';
              }

              final emailRegex = RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              );

              if (!emailRegex.hasMatch(value.trim())) {
                return 'Please enter a valid email';
              }

              return null;
            },
            hint: '',
          ),

          const SizedBox(height: 20),

          const SizedBox(height: 20),
          CustomTextField(
            /// controller: cubit.passwordController,
            hintText: 'Password',

            /// obscureText: cubit.isPasswordHidden,
            textInputAction: TextInputAction.done,

            suffixIcon: IconButton(
              onPressed: () {},

              /// cubit.togglePasswordVisibility,
              icon: Icon(
                /// cubit.isPasswordHidden
                /// ? Icons.visibility_off
                /// :
                Icons.visibility,
              ),
            ),

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }

              if (value.length < 6) {
                return 'Password must be at least 6 characters';
              }

              return null;
            },
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
            title: 'Ceate Acount',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            onPressed: () {
              Navigator.pushNamed(
                context,
                SignupScreen.routeName,
              );

            }, text: '',
          ),

          // PrimaryButton(
          //   text: "CREATE ACCOUNT",
          //   onPressed: () {},
          //   title: '',
          // ),

          const SizedBox(height: 18),
          PrimaryButton(
            ///ndjnvn///
            title: 'Login',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            onPressed: () {
              Navigator.pushNamed(
                context,
                LoginScreen.routeName,
              );
            }, text: '',
          ),

          // PrimaryButton(
          //   text: "LOGIN",
          //   onPressed: () {},
          //   title: '',
          // ),

          const SizedBox(height: 30),

          Row(
            children: [
              const Expanded(child: Divider(color: Colors.white54)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  "OR",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              const Expanded(child: Divider(color: Colors.white54)),
            ],
          ),

          const SizedBox(height: 28),

          const SizedBox(height: 18),
          const
          SocialButtons(),

          // SocialButton(
          //   title: 'Continue with Google',
          //   imagePath: 'assets/images/google.png',
          //   onPressed: () {}, icon: '',
          // ),
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
