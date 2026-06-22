import 'package:flutter/material.dart';

class TemperatureCard extends StatelessWidget {
  const TemperatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xff1B2433),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.white10,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                "24°C",
                style: TextStyle(
                  color: Color(0xffB4EC3B),
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),

              const Spacer(),

              Column(
                children: [

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffB4EC3B),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Normal",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Icon(
                    Icons.wb_cloudy_outlined,
                    color: Colors.white,
                    size: 45,
                  ),
                ],
              ),
            ],
          ),

          const Spacer(),

          const Text(
            "Temperature",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),

          const SizedBox(height: 6),

          const Text(
            "Los Angeles, CA, USA",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15,
            ),
          ),

          const Spacer(),

          const Text(
            "Thu 12:00, Mostly Cloudy",
            style: TextStyle(
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}