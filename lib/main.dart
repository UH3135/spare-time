import 'package:flutter/material.dart';

import 'features/home/presentation/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spare Time',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF11B981)),
        scaffoldBackgroundColor: const Color(0xFFF3F5FA),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
