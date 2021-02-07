import 'package:flutter/material.dart';
import 'package:netflix_flutter/screens/screens.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var _selectedIndex = 0;
  List _screens = [
    home_screen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold()
  ];
  final Map<String, IconData> _icons = {
    'Home': Icons.home,
    "search": Icons.search,
    "comming soon": Icons.queue_play_next,
    "More": Icons.menu
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: _icons.entries.map((entry) {
          BottomNavigationBarItem(
            icon: Icon(entry.value),
            label: entry.key,
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
