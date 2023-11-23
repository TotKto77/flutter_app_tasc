import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/screens/home_sceen/home_screen.dart';
import 'package:flutter_app_tasc/screens/source_screen/source_screen.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});
  static final GlobalKey<_MyBottomNavigationState> globalKey = GlobalKey();

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
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
      key: MyBottomNavigation.globalKey,
      body: _widgetOptions[_selectedPage],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            height: kBottomNavigationBarHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: Offset(0, 2), // Уменьшите offset, чтобы поднять тень
                ),
              ],
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedPage,
              onTap: onSelectPage,
              items: [
                BottomNavigationBarItem(
                  icon: const SizedBox(
                    width: 24,
                    child: Icon(Icons.home_outlined),
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
                    child: Icon(Icons.grid_view_outlined),
                  ),
                  activeIcon: SizedBox(
                    width: 24,
                    child: Icon(
                      Icons.grid_view_sharp,
                      color: Colors.blue[300],
                    ),
                  ),
                  label: "Source",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
