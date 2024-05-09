import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:rikaab_clone1/view/help.dart';
import 'package:rikaab_clone1/view/history.dart';
import 'package:rikaab_clone1/view/home.dart';
import 'package:rikaab_clone1/view/mycart.dart';
import 'package:rikaab_clone1/view/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int CurrentIndex = 0;

  List<Widget> Screens = [
    homepage(),
    history(),
    myCart(),
    help(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: CurrentIndex,
        onTap: (index){
         setState(() {
            CurrentIndex = index;
         });
        },
        items: [
       BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.black,),
             label: 'Home',
        ),
        
          BottomNavigationBarItem(
          icon: Icon(Icons.history,),
          label: 'History',
        ),
          BottomNavigationBarItem(
          icon: Icon(IconlyLight.bag),
             label: 'My Cart'
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.help),
             label: 'Help'
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.person),
             label: 'Profile'
        )
      ]),
    );
  }
}
