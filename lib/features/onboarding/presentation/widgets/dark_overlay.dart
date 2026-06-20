import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class DarkOverlay extends StatelessWidget {
  const DarkOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        color: Colors.black.withOpacity(.45),
      ),
    );
  }
}