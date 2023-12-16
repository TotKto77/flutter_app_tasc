import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/screens/home_sceen/home_screen.dart';
import 'package:flutter_app_tasc/screens/settings_screen/settings_screen.dart';
import 'package:flutter_app_tasc/screens/source_screen/source_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});
  // static final GlobalKey<_MyBottomNavigationState> globalKey = GlobalKey();

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _selectedPage = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SourceScreen(),
    const SettingsScreen(),
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
      // key: MyBottomNavigation.globalKey,
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
                  offset: const Offset(
                      0, 2), // Уменьшите offset, чтобы поднять тень
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
                  activeIcon: const SizedBox(
                    width: 24,
                    child: Icon(
                      Icons.home_filled,
                    ),
                  ),
                  label: AppLocalizations.of(context)?.home ?? '',
                ),
                BottomNavigationBarItem(
                  icon: const SizedBox(
                    width: 24,
                    child: Icon(Icons.grid_view_outlined),
                  ),
                  activeIcon: const SizedBox(
                    width: 24,
                    child: Icon(
                      Icons.grid_view_sharp,
                    ),
                  ),
                  label: AppLocalizations.of(context)?.source ?? '',
                ),
                BottomNavigationBarItem(
                  icon: const SizedBox(
                    width: 24,
                    child: Icon(Icons.settings_outlined),
                  ),
                  activeIcon: const SizedBox(
                    width: 24,
                    child: Icon(
                      Icons.settings,
                    ),
                  ),
                  label: AppLocalizations.of(context)?.settings ?? '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
