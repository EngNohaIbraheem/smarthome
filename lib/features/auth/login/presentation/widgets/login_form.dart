import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//var cubit = context.contextread<LoginCubit>();


import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../manager/login_cubit.dart';



class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          /// Email
          CustomTextField(
            controller: cubit.emailController,
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
            }, hint: '',
          ),

          const SizedBox(height: 20),

          /// Password
          BlocBuilder<LoginCubit, LoginState>(
            buildWhen: (previous, current) =>
            current is PasswordVisibilityChanged,
            builder: (context, state) {
              return CustomTextField(
                controller: cubit.passwordController,
                hintText: 'Password',
                obscureText: cubit.isPasswordHidden,
                textInputAction: TextInputAction.done,

                suffixIcon: IconButton(
                  onPressed: cubit.togglePasswordVisibility,
                  icon: Icon(
                    cubit.isPasswordHidden
                        ? Icons.visibility_off
                        : Icons.visibility,
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
                }, hint: '',
              );
            },
          ),

          const SizedBox(height: 30),

          /// Login Button
          BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccess) {
                // TODO Navigate to Home
              }

              if (state is LoginFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                  ),
                );
              }
            },
            builder: (context, state) {
              return PrimaryButton(
                title: 'LOGIN',
                isLoading: state is LoginLoading,
                onPressed: () {
                  context.read<LoginCubit>().login();
                }, text: '',
              );
            },
          ),

          const SizedBox(height: 14),

          /// Sign Up
          PrimaryButton(
            title: 'SIGN UP',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            onPressed: () {
              // TODO Navigate To Register Screen
            }, text: '',
          ),
        ],
      ),
    );
  }
}