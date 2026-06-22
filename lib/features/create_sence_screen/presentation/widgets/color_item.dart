import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {

  const ColorItem({

    super.key,

    required this.color,

    required this.selected,

    required this.onTap,

  });

  final Color color;

  final bool selected;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {

    return InkWell(

      onTap: onTap,

      child: Container(

        width: 40,

        height: 40,

        decoration: BoxDecoration(

          color: color,

          shape: BoxShape.circle,

          border: Border.all(

            color: selected
                ? Colors.white
                : Colors.transparent,

            width: 3,
          ),
        ),
      ),
    );
  }
}