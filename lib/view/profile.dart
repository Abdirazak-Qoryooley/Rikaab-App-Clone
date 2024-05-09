import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(CupertinoIcons.back,color: Colors.white,),
        elevation: 0,
        title: ListTile(
          
          title: Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Text('Profile',style: TextStyle(fontSize: 18,color: Colors.white),),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
   Center(
     child: Stack(
      clipBehavior: Clip.none,
      children: [
         Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.green,width: 1)
      ),
       child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('images/a.jpg',),
       ),
     ),
     Positioned(
      top: 70,
      left: 70,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.green,
        child: Icon(Icons.photo_camera,color: Colors.white,)))
      ],
     )
   ),
   SizedBox(
    height: 0,
   ),
  Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 18.0,left: 24),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text('First name',style: TextStyle(fontSize: 16,color: Colors.black),)),
      ),
    SizedBox(
      height: 8,
    ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.grey.shade200,borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0,left: 12),
          child: Text('Abdirazak',style: TextStyle(fontSize: 18,color: Colors.grey),),
        ),
      )
    ],
  ),
  SizedBox(
    height: 0,
  ),
  Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 18.0,left: 24),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text('Last Name',style: TextStyle(fontSize: 16,color: Colors.black),)),
      ),
    SizedBox(
      height: 8,
    ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.grey.shade200,borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0,left: 12),
          child: Text('Last Name',style: TextStyle(fontSize: 18,color: Colors.grey),),
        ),
      )
    ],
  ),
    SizedBox(
    height: 0,
  ),
  Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 18.0,left: 24),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text('Email',style: TextStyle(fontSize: 16,color: Colors.black),)),
      ),
    SizedBox(
      height: 8,
    ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.grey.shade200,borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0,left: 12),
          child: Text('Email',style: TextStyle(fontSize: 18,color: Colors.grey),),
        ),
      ),
        SizedBox(
    height: 0,
  ),
  Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 18.0,left: 24),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text('Number',style: TextStyle(fontSize: 16,color: Colors.black),)),
      ),
    SizedBox(
      height: 8,
    ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.grey.shade200,borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0,left: 12),
          child: Text('611522825',style: TextStyle(fontSize: 18,color: Colors.grey),),
        ),
      )
    ],
  )
    ],
  ),
  SizedBox(
    height: 10,
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
                  'EDIT PROFILE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      ),
                )))
        ],
      ),
    );
  }
}