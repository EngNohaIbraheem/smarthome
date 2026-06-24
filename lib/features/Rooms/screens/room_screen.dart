import 'package:flutter/material.dart';
import '../models/room_model.dart';
import '../widgets/add_botom_sheet.dart';
import '../widgets/create_button_room.dart';
import '../widgets/custom_bottom_nav.dart';
import '../widgets/room_card.dart';



class RoomsScreen extends StatefulWidget {
  const RoomsScreen({super.key});

  static const String routeName = "RoomsScreen";

  @override
  State<RoomsScreen> createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen> {
  final List<RoomModel> rooms = [
    RoomModel(
      name: "Living Room",
      image: "assets/images/living_room.png",
      devices: "5",
      title: "",
    ),
    RoomModel(
      name: "Bedroom",
      image: "assets/images/bedroom.png",
      devices: "4",
      title: "",
    ),
    RoomModel(
      name: "Bedroom 2",
      image: "assets/images/bathroom.png",
      devices: "4",
      title: "",
    ),
    RoomModel(
      name: "Kitchen",
      image: "assets/images/kitchen.png",
      devices: "2",
      title: "",
    ),
  ];

  void _showAddRoomBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const AddRoomBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181C24),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              const Text(
                "Your Room’s",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              Expanded(
                child: GridView.builder(
                  itemCount: rooms.length,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 18,
                    mainAxisSpacing: 20,
                    childAspectRatio: .82,
                  ),
                  itemBuilder: (context, index) {
                    return RoomCard(
                      room: rooms[index],
                      onChanged: (value) {
                        setState(() {
                          rooms[index].isOn = value;
                        });
                      },
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              CreateRoomButton(
                onPressed: _showAddRoomBottomSheet,
              ),

              const SizedBox(height: 20),

              const CustomBottomNav(),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}