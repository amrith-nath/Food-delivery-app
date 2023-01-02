import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../core/icons/icons.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
        onTap: (newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
        currentIndex: selectedIndex,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        items: [
          SalomonBottomBarItem(icon: KIcon.home, title: const Text('Home')),
          SalomonBottomBarItem(icon: KIcon.search, title: const Text('Search')),
          SalomonBottomBarItem(icon: KIcon.bag, title: const Text('Cart')),
          SalomonBottomBarItem(
              icon: KIcon.profile, title: const Text('Profile')),
        ]);
  }
}
