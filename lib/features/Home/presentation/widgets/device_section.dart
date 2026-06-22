import 'package:flutter/material.dart';

import '../../../../core/widgets/section_title.dart';
import '../../data/dummy_devices.dart';
import 'device_card.dart';

class DeviceSection extends StatefulWidget {
  const DeviceSection({super.key});

  @override
  State<DeviceSection> createState() => _DeviceSectionState();
}

class _DeviceSectionState extends State<DeviceSection> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SectionTitle(
          title: "My Device",
          buttonText: "Add Device",
          onPressed: () {},
        ),

        const SizedBox(height: 20),

        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),

          itemCount: devices.length,

          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount: 2,

            crossAxisSpacing: 14,

            mainAxisSpacing: 14,

            childAspectRatio: .78,
          ),

          itemBuilder: (context, index) {

            final device = devices[index];

            return DeviceCard(

              device: device,

              onChanged: (value) {

                setState(() {

                  device.isOn = value;

                });

              },
            );
          },
        ),
      ],
    );
  }
}