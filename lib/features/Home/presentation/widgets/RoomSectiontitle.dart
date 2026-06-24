import 'package:flutter/material.dart';

import '../../../../core/widgets/section_title.dart';
import '../../../Rooms/screens/room_screen.dart';
import '../../data/dummy_devices.dart';
import 'device_card.dart';

class RoomDeviceSection extends StatefulWidget {
  const RoomDeviceSection({super.key});

  @override
  State<RoomDeviceSection> createState() => _RoomDeviceSectionState();
}

class _RoomDeviceSectionState extends State<RoomDeviceSection> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SectionTitle(
          title: "My Room",
          buttonText: "Add Room",
          onPressed: () {
            Navigator.pushNamed(
              context,
              RoomsScreen.routeName,
            );

          },
        ),

        const SizedBox(height: 20),

        // GridView.builder(
        //   shrinkWrap: true,
        //   physics: const NeverScrollableScrollPhysics(),
        //
        //   itemCount: devices.length,
        //
        //   gridDelegate:
        //   const SliverGridDelegateWithFixedCrossAxisCount(
        //
        //     crossAxisCount: 2,
        //
        //     crossAxisSpacing: 14,
        //
        //     mainAxisSpacing: 14,
        //
        //     childAspectRatio: .78,
        //   ),
        //
        //   itemBuilder: (context, index) {
        //
        //     final device = devices[index];
        //
        //     return DeviceCard(
        //
        //       device: device,
        //
        //       onChanged: (value) {
        //
        //         setState(() {
        //
        //           device.isOn = value;
        //
        //         });
        //
        //       },
        //     );
        //   },
        // ),
      ],
    );
  }
}