import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myCart extends StatelessWidget {
  const myCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(
          CupertinoIcons.back,
          color: Colors.white,
        ),
        elevation: 0,
        title: ListTile(
          title: Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Text(
              'Cart',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
            child: Image.asset(
              'images/cart.png',
              fit: BoxFit.cover,
              scale: 3,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Your Cart is Empty',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'get some amazing products & offers',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
             SizedBox(
            height: 18,
          ),
          Container(
            width: 135,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Center(
              child: Text('Star Shopping',style: TextStyle(color: Colors.white),),
            ),
          )

        ],
      ),
    );
  }
}
