import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class foodCard extends StatelessWidget {
  const foodCard({super.key, required this.image, required this.text, required this.text2, required this.text3, required this.text4, required this.image2});

final String image;
final String image2;

final String text;
final String text2;
final String text3;
final String text4;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                child: Image.asset(
                 image,
                  fit: BoxFit.cover, // Set the image fit to BoxFit.cover
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xff0f5ebe0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff0f40b22),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              left: 230,
              top: 70,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(50)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      image2,
                      fit: BoxFit.fill,
                    )),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            text2,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Text(
              text3,
              style: TextStyle(fontSize: 10),
            ),
            Spacer(),
            Text(text4)
          ],
        ),
      ],
    );
  }
}
