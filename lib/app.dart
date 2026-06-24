import 'package:flutter/material.dart';
import 'package:smarthome/features/onboarding/presentation/onboarding_scrren.dart';

import 'core/config/router/app_router.dart';
import 'features/auth/Signup/presentation/screens/signup_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shopping online',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: SignupScreen.routeName,
    );
  }
}
