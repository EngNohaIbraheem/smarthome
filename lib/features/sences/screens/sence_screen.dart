import 'package:flutter/material.dart';

import '../widgets/create_sence_button.dart';
import '../widgets/sence_header.dart';
import '../widgets/sence_list.dart';

class SceneScreen extends StatelessWidget {
  const SceneScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(

      backgroundColor: Color(0xff101826),

      body: SafeArea(

        child: Padding(

          padding: EdgeInsets.all(20),

          child: Column(

            children: [

              SceneHeader(),

              SizedBox(height: 25),

              Expanded(
                child: SceneList(),
              ),

              SizedBox(height: 20),

              CreateSceneButton(),
            ],
          ),
        ),
      ),
    );
  }
}