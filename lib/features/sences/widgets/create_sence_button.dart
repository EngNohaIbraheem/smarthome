import 'package:flutter/material.dart';

import '../../../core/widgets/primary_button.dart';
import '../../create_sence_screen/presentation/screens/create_sence_screen.dart';
import '../../sencess/screens/sence_screenn.dart';
import '../screens/sence_screen.dart';

class CreateSceneButton extends StatelessWidget {
  const CreateSceneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      text: "Create Scene",
      onPressed: () {

        Navigator.pushNamed(
          context,
          ScenesyScreenn.routeName,
        );

      }, title: '',
    );
  }
}