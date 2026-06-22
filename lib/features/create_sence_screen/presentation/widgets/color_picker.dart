import 'package:flutter/material.dart';

import 'color_item.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({super.key});

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {

  int selected = 0;

  final colors = [

    Colors.amber,

    Colors.green,

    Colors.blue,

    Colors.red,

    Colors.purple,

    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        const Text(

          "Choose Color",

          style: TextStyle(

            color: Colors.white,

            fontWeight: FontWeight.bold,

            fontSize: 22,
          ),
        ),

        const SizedBox(height: 20),

        Wrap(

          spacing: 18,

          runSpacing: 18,

          children: List.generate(

            colors.length,

                (index) {

              return ColorItem(

                color: colors[index],

                selected: selected == index,

                onTap: () {

                  setState(() {

                    selected = index;

                  });

                },
              );
            },
          ),
        ),
      ],
    );
  }
}