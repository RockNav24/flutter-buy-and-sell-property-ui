import 'package:buy_and_sell_property_app/consts.dart';
import 'package:flutter/material.dart';

/**
 *  This stores data about the Custom Navigationbar.
 */

class BottomNavbarProvider extends ChangeNotifier {
  List<Icon> _navbarIcons = [
    Icon(
      Icons.home_outlined,
      color: c_bottomNavItemColor,
    ),
    Icon(
      Icons.bookmark_border_rounded,
      color: c_bottomNavItemColor,
    ),
    Icon(
      Icons.notifications_none,
      color: c_bottomNavItemColor,
    ),
    Icon(
      Icons.person_outline_outlined,
      color: c_bottomNavItemColor,
    ),
  ];

  int _currentItem = 0;

  List<Icon> get getNavbarItems => _navbarIcons;
  int get getCurrentVal => _currentItem;

  set setCurrentItemVal(int currentItemVal) {
    _currentItem = currentItemVal;
    notifyListeners();
  }
}
