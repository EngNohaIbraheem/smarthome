import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'core/network/cache/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.initCacheHelper();
  runApp(const MyApp());
}
