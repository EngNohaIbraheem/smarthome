import 'package:flutter/material.dart';

class SceneHeader extends StatelessWidget {
  const SceneHeader({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(

      children: [

        InkWell(

          onTap: (){
            Navigator.pop(context);
          },

          borderRadius: BorderRadius.circular(50),

          child: Container(

            width: 48,
            height: 48,

            decoration: BoxDecoration(
              color: const Color(0xff212A38),
              borderRadius: BorderRadius.circular(50),
            ),

            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
        ),

        const Spacer(),

        const Text(

          "Scenes",

          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),

        const Spacer(),

        Container(
          width: 48,
          height: 48,
        )
      ],
    );
  }
}