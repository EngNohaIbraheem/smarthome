import 'package:flutter/material.dart';
import 'package:smarthome/features/sencess/screens/schedual_buttom_sheet.dart';

import '../../../core/widgets/primary_button.dart';
import '../../../core/widgets/sence_item.dart';
import '../widgets/primary_button.dart';

class ScenesyScreenn extends StatefulWidget {
  const ScenesyScreenn({super.key});
  static const String routeName = "ScenesScreenn";

  @override
  State<ScenesyScreenn> createState() => _ScenesScreennState();
}

class _ScenesScreennState extends State<ScenesyScreenn> {
  bool morning = false;
  bool night = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171B22),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Back Button
              Container(
                width: 46,
                height: 46,
                decoration: const BoxDecoration(
                  color: Color(0xff2A2F37),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xffB9F531),
                    size: 18,
                  ),
                ),
              ),

              const SizedBox(height: 38),

              const Text(
                "Scenes",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const SizedBox(height: 22),

              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xff2B3139),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  children: [

                    SceneItem(
                      title: "Morning scene",
                      icon: Icons.wb_sunny,
                      value: morning,
                      onChanged: (value) {
                        setState(() {
                          morning = value;
                        });
                      },
                    ),

                    const SizedBox(height: 10),

                    SceneItem(
                      title: "Night scene",
                      icon: Icons.nightlight_round,
                      value: night,
                      onChanged: (value) {
                        setState(() {
                          night = value;
                        });
                      },
                    ),
                  ],
                ),
              ),

              const Spacer(),

              PrimaryyButton(
                text: "Create your Scene",
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ScheduleBottomSheet.routeName,
                  );

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}