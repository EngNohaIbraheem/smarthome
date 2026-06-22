import 'package:flutter/material.dart';

import '../../../core/widgets/primary_button.dart';

class CreateSceneButton extends StatelessWidget {
  const CreateSceneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      text: "Create Scene",
      onPressed: () {

      }, title: '',
    );
  }
}