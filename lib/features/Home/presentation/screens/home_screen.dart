import 'package:flutter/material.dart';
import '../../../Rooms/widgets/room_section.dart';
import '../widgets/Custom_buttom_navigation.dart';
import '../widgets/RoomSectiontitle.dart';
import '../widgets/device_section.dart';
import '../widgets/profile_header.dart';
import '../widgets/sence_card.dart';
import '../widgets/weather_card.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101826),

      body: const SafeArea(
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
              RoomDeviceSection(),
              SizedBox(height: 30),

              RoomSection(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),

      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}