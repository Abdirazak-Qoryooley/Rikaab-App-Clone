import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return       Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              height: 85,
              decoration: BoxDecoration(
                  color: Color(0xff0eef2f7),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Points Balance'),
                            SizedBox(
                              width: 110,
                            ),
                            Row(
                              children: [
                                Text('Premium'),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: Color(0xff0b7e4c7),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'images/crown.png',
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Text('173',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                      ],
                    ),
                  )
                ],
              ),
            );
  }
}