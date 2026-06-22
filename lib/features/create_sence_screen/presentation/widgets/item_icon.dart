import 'package:flutter/material.dart';

class IconItem extends StatelessWidget {

  const IconItem({

    super.key,

    required this.icon,

    required this.selected,

    required this.onTap,

  });

  final IconData icon;

  final bool selected;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {

    return InkWell(

      onTap: onTap,

      borderRadius: BorderRadius.circular(18),

      child: Container(

        width: 65,
        height: 65,

        decoration: BoxDecoration(

          color: selected
              ? const Color(0xffC2FF39)
              : const Color(0xff212A38),

          borderRadius: BorderRadius.circular(18),
        ),

        child: Icon(

          icon,

          size: 32,

          color: selected
              ? Colors.black
              : Colors.white,
        ),
      ),
    );
  }
}