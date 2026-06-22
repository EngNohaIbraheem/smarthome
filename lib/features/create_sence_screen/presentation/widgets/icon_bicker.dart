import 'package:flutter/material.dart';

import 'item_icon.dart';


class IconPicker extends StatefulWidget {
  const IconPicker({super.key});

  @override
  State<IconPicker> createState() => _IconPickerState();
}

class _IconPickerState extends State<IconPicker> {

  int selected = 0;

  final icons = [

    Icons.wb_sunny,

    Icons.nightlight,

    Icons.movie,

    Icons.music_note,

    Icons.book,
  ];

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        const Text(

          "Choose Icon",

          style: TextStyle(

            color: Colors.white,

            fontSize: 22,

            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 20),

        SizedBox(

          height: 70,

          child: ListView.separated(

            scrollDirection: Axis.horizontal,

            itemBuilder: (_, index) {

              return IconItem(

                icon: icons[index],

                selected: selected == index,

                onTap: () {

                  setState(() {

                    selected = index;

                  });

                },
              );
            },

            separatorBuilder: (_, __) =>
            const SizedBox(width: 14),

            itemCount: icons.length,
          ),
        ),
      ],
    );
  }
}