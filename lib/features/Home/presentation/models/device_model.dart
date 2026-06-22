class DeviceModel {
  final String image;
  final String name;
  final String totalDevices;
  bool isOn;

  DeviceModel({
    required this.image,
    required this.name,
    required this.totalDevices,
    this.isOn = false,
  });
}