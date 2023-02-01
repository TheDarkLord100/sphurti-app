import 'package:flutter/material.dart';
import 'package:sphurti_app/screens/contacts.dart';
import 'package:sphurti_app/screens/home.dart';
import 'package:sphurti_app/screens/live_result.dart';
import 'package:sphurti_app/screens/sports.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _selectedIndex = 0;
  List<Widget> lists = <Widget>[
    const HomeScreen(),
    const SportsScreen(),
    const LiveResultsScreen(),
    const ContactScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: lists.elementAt(_selectedIndex),

      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_outlined), label: 'Sports'),
          BottomNavigationBarItem(
              icon: Icon(Icons.live_tv_outlined), label: 'Live Result'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page_outlined), label: 'Contacts'),

        ],
        iconSize: 28,
        selectedItemColor: Colors.red,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
