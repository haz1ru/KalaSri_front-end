import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: [
          const NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          const NavigationDestination(
              icon: Icon(Icons.store), label: "Market Place"),
          NavigationDestination(
            icon: Container(
              margin: const EdgeInsets.only(top: 20), // Adds top margin
              child: const Icon(Icons.add_circle_outline, size: 50),
            ),
            label: '',
          ),
          const NavigationDestination(
              icon: Icon(Icons.local_shipping), label: "Orders"),
          const NavigationDestination(
              icon: Icon(Icons.account_circle), label: "Profile"),
        ],
      ),
    );
  }
}
