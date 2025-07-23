import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyCoffeeJournalApp());
}

class MyCoffeeJournalApp extends StatelessWidget {
  const MyCoffeeJournalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myCoffee Journal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B4513), // Coffee brown
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
