import 'package:flutter/material.dart';

import '../../../core/widgets/custum_switch.dart';
import '../models/sence_model.dart';

import 'package:flutter/material.dart';



class SceneItem extends StatelessWidget {
  const SceneItem({
    super.key,
    required this.scene,
    required this.onChanged, required bool value, required String title, required IconData icon,
  });

  final SceneModel scene;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xff232C39),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: const BoxDecoration(
              color: Color(0xff2E3746),
              shape: BoxShape.circle,
            ),
            child: Icon(
              scene.icon,
              color: const Color(0xffB7F23A),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              scene.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          CustomSwitch(
            value: scene.isActive,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}