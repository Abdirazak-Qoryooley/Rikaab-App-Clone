import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rikaab_clone1/components/balanceCard.dart';
import 'package:badges/badges.dart' as badges;
import 'package:rikaab_clone1/components/drawer.dart';
import 'package:rikaab_clone1/components/myCard.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'images/logo.png',
              scale: 3,
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              width: 140,
            ),
            badges.Badge(
              badgeContent: Text('2', style: TextStyle(color: Colors.white)),
              child: Icon(Icons.notifications, color: Colors.green),
            )
          ],
        ),
      ),
      drawer:drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BalanceCard(),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              height: 200,
              child: Container(
                height: 100,
                width: 400,
                child: InputDecorator(
                  decoration: InputDecoration(
                      labelText: 'Services',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xff0eef2f7),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Image.asset(
                                  'images/car.png',
                                ),
                              ),
                              Text('Taxi'),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xff0eef2f7),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'images/shops.png',
                                  ),
                                ),
                              ),
                              Text('Suuq'),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xff0eef2f7),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'images/food.png',
                                  ),
                                ),
                              ),
                              Text('Food'),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xff0eef2f7),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'images/delivery.png',
                                  ),
                                ),
                              ),
                              Text('Delivery'),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xff0eef2f7),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Image.asset(
                                  'images/gas.png',
                                ),
                              ),
                              Text('Gas'),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                // margin: EdgeInsets.only(right: 20),
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xff0eef2f7),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    'images/market.png',
                                  ),
                                ),
                              ),
                              Center(child: Text('Supermarket')),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        color: Color(0xff0eef2f7),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'images/earth.png',
                                      ),
                                    ),
                                  ),
                                  Text('Travel')
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Food Offers',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
   Container(
  margin: EdgeInsets.symmetric(horizontal: 25),
  padding: EdgeInsets.only(right: 12),
  width: double.infinity,
  height: 220,
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
    ],
  ),
  child: PageView(
    scrollDirection: Axis.horizontal,
    children: [
      SizedBox(
        width: 0.8 * MediaQuery.of(context).size.width,
        child: foodCard(
          image: 'images/qobey2.jpg',
          text: '50% off',
          text2: 'Qoobeey 2 Dhagax',
          text3: 'Arabic, Mandi, Chicken Faham',
          text4: '1.21 Km',
          image2: 'images/qobey.jpg',
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: foodCard(
          image: 'images/carshi1.jpg',
          text: '50% off',
          text2: 'carshi',
          text3: 'Arabic, Mandi, Chicken Faham',
          text4: '3.18 Km',
          image2: 'images/carshi.png',
        ),
      ),
          Padding(
        padding: const EdgeInsets.only(left: 15),
        child: foodCard(
          image: 'images/istan.jpg',
          text: '30% off',
          text2: 'ISTANBUL',
          text3: 'Arabic, Mandi, Chicken Faham',
          text4: '2.18 Km',
          image2: 'images/istan.jpg',
        ),
      ),
    ],
  ),
),
          ],
        ),
      ),
    );
  }
}
