import 'package:buy_and_sell_property_app/Components/BottomNavbar/bottomNavbarItem.dart';
import 'package:buy_and_sell_property_app/consts.dart';
import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatefulWidget {
  CustomBottomNavbar({Key key}) : super(key: key);

  @override
  _CustomBottomNavbarState createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: MediaQuery.of(context).size.height * c_bottomNavbarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavbarItem(
            itemNumber: 0,
            text: 'Home',
          ),
          BottomNavbarItem(
            itemNumber: 1,
            text: 'Bookmark',
          ),
          BottomNavbarItem(
            itemNumber: 2,
            text: 'Notifications',
          ),
          BottomNavbarItem(
            itemNumber: 3,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
