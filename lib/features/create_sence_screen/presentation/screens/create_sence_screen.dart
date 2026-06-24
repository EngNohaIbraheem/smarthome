import 'package:flutter/material.dart';

import '../../../../core/widgets/primary_button.dart';
import '../widgets/color_picker.dart';
import '../widgets/icon_bicker.dart';

import '../widgets/sence_name_field.dart';

class CreateSceneScreen extends StatelessWidget {
  const CreateSceneScreen({super.key});
  static const String routeName = "CreateSceneScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101826),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),

        title: const Text("Create Scene"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SceneNameField(),

            const SizedBox(height: 30),

            IconPicker(),

            const SizedBox(height: 30),

            const ColorPicker(),

            const SizedBox(height: 40),

            PrimaryButton(
              text: "Continue", title: '', onPressed: () {  },
            ),
          ],
        ),
      ),
    );
  }
}