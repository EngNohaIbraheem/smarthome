class RoomModel {
  final String image;
  final String title;
  final String devices;
  bool isOn;

  RoomModel({
    required this.image,
    required this.title,
    required this.devices,
    this.isOn = false,
  });
}