import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok/constraints.dart';
import 'package:tiktok/views/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundcolors
      ),
      home: Login(),
    );
  }
}