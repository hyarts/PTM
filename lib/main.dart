import 'package:flutter/material.dart';
import 'package:pomodoro_timer/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '뽀모도로 타이머',
      home: HomeScreen(),
    );
  }
}