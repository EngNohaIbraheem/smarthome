import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ElectricityUsageCard extends StatelessWidget {
  const ElectricityUsageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xff1B2433),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Electricity",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 2),

          const Text(
            "Usage",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 12,
            ),
          ),

          const Spacer(),

          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "32.5",
                  style: TextStyle(
                    color: Color(0xffB4EC3B),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: " KWh",
                  style: TextStyle(
                    color: Color(0xffB4EC3B),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}