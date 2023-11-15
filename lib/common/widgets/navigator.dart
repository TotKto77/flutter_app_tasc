import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/screens/home_sceen/home_screen.dart';
import 'package:flutter_app_tasc/screens/source_screen.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigatioState();
}

class _MyBottomNavigatioState extends State<MyBottomNavigation> {
  int _selectedPage = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SuorceScreen(),
  ];
  void onSelectPage(int index) {
    if (_selectedPage == index) return;
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: _widgetOptions[_selectedPage],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        items: [
          BottomNavigationBarItem(
            icon: const SizedBox(
              width: 24,
              child: Icon(Icons.home_filled),
            ),
            activeIcon: SizedBox(
              width: 24,
              child: Icon(
                Icons.home_filled,
                color: Colors.blue[300],
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: const SizedBox(
              width: 24,
              child: Icon(Icons.grid_view_sharp),
            ),
            activeIcon: SizedBox(
              width: 24,
              child: Icon(
                Icons.grid_view_sharp,
                color: Colors.blue[300],
              ),
            ),
            label: "Sourse",
          ),
        ],
        onTap: onSelectPage,
      ),
    );
  }
}
