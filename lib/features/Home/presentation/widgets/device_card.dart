import 'package:flutter/material.dart';

import '../../../../core/widgets/custum_switch.dart';
import '../models/device_model.dart';

class DeviceCard extends StatelessWidget {
  const DeviceCard({
    super.key,
    required this.device,
    required this.onChanged,
  });

  final DeviceModel device;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: const Color(0xff313843),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xffB4EC3B),
              size: 18,
            ),
          ),

          Expanded(
            child: Center(
              child: Image.asset(
                device.image,
                fit: BoxFit.contain,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            device.name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            device.totalDevices,
            style: const TextStyle(
              color: Colors.white60,
            ),
          ),

          const Spacer(),

          Align(
            alignment: Alignment.bottomRight,
            child: CustomSwitch(
              value: device.isOn,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}