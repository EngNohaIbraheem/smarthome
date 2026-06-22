import 'package:flutter/material.dart';

import '../../../core/widgets/sence_item.dart';
import '../data/dummy_semce.dart';



class SceneList extends StatefulWidget {
  const SceneList({super.key});

  @override
  State<SceneList> createState() => _SceneListState();
}

class _SceneListState extends State<SceneList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: scenes.length,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final scene = scenes[index];
        return SceneItem(
          icon: scene.icon,
          title: scene.title,
          value: scene.isActive,
          onChanged: (value) {
            setState(() {
              scene.isActive = value;
            });
          },
        );
        // return SceneItem(
        //   scene: scene,
        //   onChanged: (value) {
        //     setState(() {
        //       scene.isActive = value;
        //     });
        //   }, icon: '', title: '', value: '',
        // );
      },
    );
  }
}