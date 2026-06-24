import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        const CircleAvatar(
          radius: 24,
          backgroundImage:
          AssetImage("assets/images/avatar.png"),
        ),

        const Spacer(),

        const Text(
          "Noha",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),

        const Spacer(),

        Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            color: const Color(0xff212A38),
            borderRadius: BorderRadius.circular(26),
          ),
          child: Stack(
            children: [

              const Center(
                child: Icon(
                  Icons.notifications_none,
                  color: Color(0xffB4EC3B),
                  size: 30,
                ),
              ),

              Positioned(
                right: 12,
                top: 12,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Color(0xffB4EC3B),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}