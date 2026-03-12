import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/widgets/startup_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'InstrumentSans',
        textTheme: const TextTheme(),
        primaryTextTheme: const TextTheme(),
      ),
      home: const StartupScreen(),
    ),
  );
}
