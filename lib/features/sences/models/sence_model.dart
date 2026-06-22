import 'package:flutter/material.dart';

class SceneModel {
  final String title;
  final IconData icon;
  bool isActive;

  SceneModel({
    required this.title,
    required this.icon,
    this.isActive = false,
  });
}