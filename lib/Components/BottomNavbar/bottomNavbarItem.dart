import 'package:buy_and_sell_property_app/Components/BottomNavbar/bottomNavbarProvider.dart';
import 'package:buy_and_sell_property_app/Components/BottomNavbar/bottomNavbarSelectedItem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavbarItem extends StatefulWidget {
  final int itemNumber;
  final String text;

  BottomNavbarItem({Key key, @required this.itemNumber, @required this.text})
      : super(key: key);

  @override
  _BottomNavbarItemState createState() => _BottomNavbarItemState();
}

class _BottomNavbarItemState extends State<BottomNavbarItem> {
  @override
  Widget build(BuildContext context) {
    final BottomNavbarProvider bottomNavbarData =
        Provider.of<BottomNavbarProvider>(context);
    return GestureDetector(
      // customBorder: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(c_bottomNavButtonInkRadius),
      // ),
      // splashColor: Colors.red,
      child: bottomNavbarData.getCurrentVal == widget.itemNumber
          ? BottomNavbarSelectedItem(
              navbarIconsList: bottomNavbarData.getNavbarItems,
              currentItem: bottomNavbarData.getCurrentVal,
              text: widget.text,
            )
          : bottomNavbarData.getNavbarItems[widget.itemNumber],
      onTap: () {
        bottomNavbarData.setCurrentItemVal = widget.itemNumber;
      },
      onHorizontalDragUpdate: (DragDownDetails) {
        // if (DragDownDetails.localPosition.dx >= 1 &&
        //     widget.itemNumber != bottomNavbarData.getNavbarItems.length - 1) {
        //   bottomNavbarData.setCurrentItemVal = widget.itemNumber + 1;
        // }
        // if (DragDownDetails.localPosition.dx < -1 && widget.itemNumber != 0) {
        //   bottomNavbarData.setCurrentItemVal = widget.itemNumber - 1;
        // }

        if (DragDownDetails.delta.dx > 1 &&
            widget.itemNumber != bottomNavbarData.getNavbarItems.length - 1) {
          // Right Swipe
          bottomNavbarData.setCurrentItemVal = widget.itemNumber + 1;
        } else if (DragDownDetails.delta.dx < -1 && widget.itemNumber != 0) {
          //Left Swipe
          bottomNavbarData.setCurrentItemVal = widget.itemNumber - 1;
        }
      },
    );
  }
}
