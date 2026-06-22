import 'package:flutter/material.dart';
import '../../../Rooms/widgets/room_section.dart';
import '../widgets/device_section.dart';
import '../widgets/profile_header.dart';
import '../widgets/sence_card.dart';
import '../widgets/weather_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff101826),
      // bottomNavigationBar: const CustomBottomNavigation(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 18,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(),

              SizedBox(height: 20),

              WeatherCard(),

              SizedBox(height: 30),

              SceneCard(),

              SizedBox(height: 30),

              DeviceSection(),

              SizedBox(height: 30),

              RoomSection(), // ✅ الصحيح

              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}