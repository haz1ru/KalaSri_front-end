import 'package:flutter/material.dart';
import 'package:kalasri/NavigationMenu.dart';
import 'package:kalasri/cart.dart';
import 'package:kalasri/ActionBar.dart';
import 'package:kalasri/Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "KalaSri",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavigationMenu(),
      routes: {
        '/cart': (context) => const Cart(), // Register Cart screen route
        '/actionbar': (context) => const ActionBar(), // Register ActionBar route
        '/profile': (context) => const Profile(), // Register Profile screen route
      },
    );
  }
}
