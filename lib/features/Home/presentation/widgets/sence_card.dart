import 'package:flutter/material.dart';

import '../../../../core/widgets/section_title.dart';
import '../../../../core/widgets/sence_item.dart';


class SceneCard extends StatefulWidget {
  const SceneCard({super.key});

  @override
  State<SceneCard> createState() => _SceneCardState();
}

class _SceneCardState extends State<SceneCard> {
  bool morningScene = false;
  bool nightScene = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Scenes",
          buttonText: "Add Scene",
          onPressed: () {
            // Navigate to Scene Screen
            // Navigator.push(...)
          },
        ),

        const SizedBox(height: 18),

        SceneItem(
          icon: Icons.wb_sunny_outlined,
          title: "Morning scene",
          value: morningScene,
          onChanged: (value) {
            setState(() {
              morningScene = value;
            });
          },
        ),

        const SizedBox(height: 14),

        SceneItem(
          icon: Icons.nightlight_round,
          title: "Night scene",
          value: nightScene,
          onChanged: (value) {
            setState(() {
              nightScene = value;
            });
          },
        ),
      ],
    );
  }
}