import 'package:flutter/material.dart';

class SceneNameField extends StatelessWidget {
  const SceneNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(

      style: const TextStyle(
        color: Colors.white,
      ),

      decoration: InputDecoration(

        hintText: "Scene Name",

        hintStyle: const TextStyle(
          color: Colors.white54,
        ),

        filled: true,

        fillColor: const Color(0xff222B38),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}