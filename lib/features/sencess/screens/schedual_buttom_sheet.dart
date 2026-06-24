import 'package:flutter/material.dart';

import '../widgets/day_chip.dart';
import '../widgets/primary_button.dart';
import '../widgets/schedual_switch_tile.dart';
import '../widgets/time_picker_card.dart';

class ScheduleBottomSheet extends StatefulWidget {
  const ScheduleBottomSheet({super.key});
  static const String routeName = "ScheduleBottomSheet";

  @override
  State<ScheduleBottomSheet> createState() => _ScheduleBottomSheetState();
}

class _ScheduleBottomSheetState extends State<ScheduleBottomSheet> {
  bool notification = false;

  final List<String> days = ["M", "T", "W", "T", "F", "S"];
  final List<bool> selected = [true, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 28),
      decoration: const BoxDecoration(
        color: Color(0xff343A40),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(28),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 12,
                backgroundColor: const Color(0xffC2FF39),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 16,
                  ),
                ),
              ),
            ),

            const Text(
              "Schedule",
              style: TextStyle(
                color: Color(0xffC2FF39),
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 24),

            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xff1C2128),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: const [

                      Icon(
                        Icons.repeat,
                        color: Color(0xffC2FF39),
                      ),

                      SizedBox(width: 14),

                      Text(
                        "Repeats Every",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      days.length,
                          (index) => DayChip(
                        title: days[index],
                        selected: selected[index],
                        onTap: () {
                          setState(() {
                            selected[index] = !selected[index];
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 18),

            ScheduleSwitchTile(
              value: notification,
              onChanged: (v) {
                setState(() {
                  notification = v;
                });
              },
            ),

            const SizedBox(height: 18),

            const TimePickerCard(),

            const SizedBox(height: 40),

            PrimaryyButton(
              text: "CONTINUE",
              onPressed: () {},
            ),

            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                "BACK",
                style: TextStyle(
                  color: Color(0xffC2FF39),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}