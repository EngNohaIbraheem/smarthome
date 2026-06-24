import 'package:flutter/material.dart';

class ScheduleSwitchTile extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const ScheduleSwitchTile({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xff1C2128),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [

          const Icon(
            Icons.notifications_none,
            color: Color(0xffC2FF39),
          ),

          const SizedBox(width: 12),

          const Expanded(
            child: Text(
              "Get notified on your phone when this routine starts",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),

          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: Colors.white,
            activeTrackColor: Colors.black,
          )
        ],
      ),
    );
  }
}