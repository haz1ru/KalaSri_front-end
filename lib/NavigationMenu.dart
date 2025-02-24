import 'package:flutter/material.dart';


class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int selectedIndex = 0; // Define the state variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 105, 205, 236),
        selectedIndex: selectedIndex,  // Use the local state variable
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;  // Update the state when user selects an item
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.store), label: "Market Place"),
          NavigationDestination(
            icon: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Icon(Icons.add_circle_outline, size: 50),
            ),
            label: '',
          ),
          NavigationDestination(icon: Icon(Icons.local_shipping), label: "Orders"),
          NavigationDestination(icon: Icon(Icons.account_circle), label: "Profile"),
        ],
      ),
      body: Center(
        child: Text('Selected Index: $selectedIndex'), // Display the selected tab
      ),
    );
  }
}
