import 'package:flutter/material.dart';

class TimePickerCard extends StatelessWidget {
  const TimePickerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xff1C2128),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Row(
        children: [

          Expanded(
            child: _TimeColumn(
              title: "Start Time",
              subtitle: "From",
              time: "12.00",
              period: "AM",
            ),
          ),

          SizedBox(width: 20),

          Expanded(
            child: _TimeColumn(
              title: "End Time",
              subtitle: "To",
              time: "18.00",
              period: "PM",
            ),
          ),
        ],
      ),
    );
  }
}

class _TimeColumn extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String period;

  const _TimeColumn({
    required this.title,
    required this.subtitle,
    required this.time,
    required this.period,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),

        SizedBox(height: 18),

        Row(
          children: [

            Text(
              subtitle,
              style: TextStyle(
                color: Colors.white70,
              ),
            ),

            SizedBox(width: 8),

            Text(
              time,
              style: TextStyle(
                color: Color(0xffC2FF39),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            SizedBox(width: 4),

            Text(
              period,
              style: TextStyle(
                color: Colors.white,
              ),
            ),

            Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xffC2FF39),
            )
          ],
        )
      ],
    );
  }
}