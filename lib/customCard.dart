import 'package:buy_and_sell_property_app/consts.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("tapped");
      },
      child: Container(
        height: MediaQuery.of(context).size.width * 0.38,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xfff5f5f5),
              const Color(0xFFffffff),
            ],
          ),
          borderRadius: BorderRadius.all(
              Radius.circular(MediaQuery.of(context).size.width * 0.03)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(
                  Radius.circular(MediaQuery.of(context).size.width * 0.03)),
              child: Image.network(
                "https://image.freepik.com/free-vector/autumn-composition-with-flat-house_23-2147675721.jpg",
                height: MediaQuery.of(context).size.width * 0.32,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.08),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: '£36 ',
                    style: TextStyle(
                        color: c_bottomNavItemColor,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.06),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'per day',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: MediaQuery.of(context).size.width * 0.04),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                Text(
                  "Charming House",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.06),
                Row(
                  children: [
                    Icon(
                      Icons.star_rate_sharp,
                      color: Colors.yellow[800],
                      size: 20,
                    ),
                    Icon(
                      Icons.star_rate_sharp,
                      color: Colors.yellow[800],
                      size: 20,
                    ),
                    Icon(
                      Icons.star_rate_sharp,
                      color: Colors.yellow[800],
                      size: 20,
                    ),
                    Icon(
                      Icons.star_rate_sharp,
                      color: Colors.yellow[800],
                      size: 20,
                    ),
                    Icon(
                      Icons.star_rate_sharp,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '(226 reviews)',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
