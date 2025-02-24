import 'package:flutter/material.dart';
import 'package:kalasri/NavigationMenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "KalaSri",
      debugShowCheckedModeBanner: false, // Removes the debug banner
      theme: ThemeData(
        // Apply a theme
        primarySwatch: Colors.blue,
      ),
      home: const NavigationMenu(),
    );
  }
}