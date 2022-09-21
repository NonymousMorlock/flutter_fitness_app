import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/IntroductionScreen.dart';
import 'package:flutter_fitness_app/res/MyColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: MyColor.primary,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: const IntroductionScreen(),
    );
  }
}
