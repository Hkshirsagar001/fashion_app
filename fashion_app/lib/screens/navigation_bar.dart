
import 'package:fashion_app/screens/cart_screen.dart';
import 'package:flutter/material.dart';

import 'catalog_screen.dart';
import 'checkout_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;

  // List of screens
  static const List<Widget> _screens = <Widget>[
    Catalog(), 
    Center(child: Text('Search Screen', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    CartScreen(), 
   CheckoutScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xffFF7A00),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed, // Ensures icons & text are always visible
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
