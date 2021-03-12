import 'package:buy_and_sell_property_app/consts.dart';
import 'package:flutter/material.dart';

class BottomNavbarSelectedItem extends StatelessWidget {
  final List<Icon> navbarIconsList;
  final int currentItem;
  final String text;
  const BottomNavbarSelectedItem(
      {Key key,
      @required this.navbarIconsList,
      @required this.currentItem,
      @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: c_bottomNavbuttonPadding,
      decoration: BoxDecoration(
        color: c_bottomNavItemColor,
        borderRadius: c_bottomNavbuttonRadius,
      ),
      child: Row(
        children: [
          Icon(
            navbarIconsList[currentItem].icon,
            color: c_whiteDark,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
              color: c_whiteDark,
            ),
          ),
        ],
      ),
    );
  }
}
