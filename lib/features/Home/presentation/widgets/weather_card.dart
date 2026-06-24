import 'package:flutter/material.dart';

import 'electricty_cost_card.dart';
import 'electricty_usage_card.dart';
import 'temperature_card.dart';


class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260, // زيادة الارتفاع
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: TemperatureCard(),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              children: const [
                Expanded(
                  child: ElectricityUsageCard(),
                ),

                SizedBox(height: 12),

                Expanded(
                  child: ElectricityCostCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}