import 'package:flutter/material.dart';

import 'electricty_cost_card.dart';
import 'electricty_usage_card.dart';
import 'temperature_card.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Row(
        children: const [

          Expanded(
            flex: 2,
            child: TemperatureCard(),
          ),

          SizedBox(width: 10),

          Expanded(
            child: Column(
              children: [

                Expanded(
                  child: ElectricityUsageCard(),
                ),

                SizedBox(height: 10),

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