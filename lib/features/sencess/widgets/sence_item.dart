import 'package:flutter/material.dart';

class SceneItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool value;
  final ValueChanged<bool> onChanged;

  const SceneItem({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xff1D2229),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [

          Container(
            width: 42,
            height: 42,
            decoration: const BoxDecoration(
              color: Color(0xff2D3239),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: const Color(0xffB9F531),
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          Transform.scale(
            scale: .9,
            child: Switch(
              value: value,
              activeColor: Colors.white,
              activeTrackColor: Colors.black,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.black,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}