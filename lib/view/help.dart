import 'package:flutter/material.dart';

class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
  String? City;
  List<String> cities = [
    "Taxi",
    "Food",
    "Suuq",
    "Gas",
    "Delivery",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'images/rlogo.png',
                  fit: BoxFit.cover,
                  scale: 6,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Abdirizak',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Thank you fot choosing Rikaab',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.grey,
              )),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  hint: Text(
                    '   Choose Title',
                    style: TextStyle(color: Colors.black),
                  ),
                  isExpanded: true,
                  value: City,
                  items: cities.map((e) {
                    return DropdownMenuItem(
                        value: e.toLowerCase(), child: Text(e));
                  }).toList(),
                  onChanged: (value) {
                    City = value;
                    setState(() {});
                  },
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      offset: Offset(1, 10),
                      color: Colors.white,
                      blurStyle: BlurStyle.solid,
                      spreadRadius: 2,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Your feedback helps us to serve you better',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                  'SUBMIT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )))
          ],
        ),
      ),
    );
  }
}
