import 'package:flutter/material.dart';

import '../data/dummy_data.dart';
import 'room_card.dart';


class RoomSection extends StatefulWidget {
  const RoomSection({super.key});

  @override
  State<RoomSection> createState() => _RoomSectionState();
}

class _RoomSectionState extends State<RoomSection> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: rooms.length,
      itemBuilder: (context, index) {
        final room = rooms[index];

        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: RoomCard(
            room: room,
            onChanged: (value) {
              setState(() {
                room.isOn = value;
              });
            },
          ),
        );
      },
    );
  }
}