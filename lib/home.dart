import 'package:flutter/material.dart';
import 'package:quiz_tpm_123210078/counter.dart';
import 'package:quiz_tpm_123210078/geometry.dart';
import 'package:quiz_tpm_123210078/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    GeometryPage(),
    CounterPage(),
    ProfilePage()
  ];

  static const navItem = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.calculate),
      label: 'Geometry',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.calendar_month),
      label: 'Days Counters',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(navItem[_selectedIndex].label!)),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: const Color.fromARGB(255, 246, 246, 246),
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: navItem,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.black26,
          selectedFontSize: 12.0,
          selectedItemColor: Colors.black,
          onTap: (index) => setState(() => _selectedIndex = index),
        ),
      ),
    );
  }
}
