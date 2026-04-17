import 'package:flutter/material.dart';
import 'screens/splash_screen.dart'; 

void main() {
  runApp(const VibeTripApp());
}

class VibeTripApp extends StatelessWidget {
  const VibeTripApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VibeTrip',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}