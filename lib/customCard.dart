import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("tapped");
      },
      child: Container(
        height: MediaQuery.of(context).size.width * 0.30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(MediaQuery.of(context).size.width * 0.03)),
          color: Colors.grey[200],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(
                  Radius.circular(MediaQuery.of(context).size.width * 0.03)),
              child: Image.network(
                "https://image.shutterstock.com/image-vector/vector-illustration-cute-colorful-house-260nw-394774564.jpg",
                height: MediaQuery.of(context).size.width * 0.25,
              ),
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: '£36 ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.05),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'per day',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: MediaQuery.of(context).size.width * 0.05),
                      ),
                    ],
                  ),
                ),
                Text("Charming House"),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.star_rate_sharp,
                      color: Colors.yellow[900],
                    ),
                    Icon(
                      Icons.star_rate_sharp,
                      color: Colors.yellow[900],
                    ),
                    Icon(
                      Icons.star_rate_sharp,
                      color: Colors.yellow[900],
                    ),
                    Icon(
                      Icons.star_rate_sharp,
                      color: Colors.yellow[900],
                    ),
                    Icon(
                      Icons.star_rate_sharp,
                      color: Colors.grey,
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
