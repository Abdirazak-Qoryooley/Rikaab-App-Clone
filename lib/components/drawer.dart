import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shadowColor: Colors.red,

      // clipBehavior: Clip.antiAlias,

      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            
            accountName: Center(child: Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Text('Abdirazak',style: TextStyle(fontSize: 20),),
            )),
            accountEmail: Center(
                child: Container(
              width: 108,
              height: 40,
              decoration: BoxDecoration(color: Colors.white54,borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'images/crown.png',
                      color: Colors.blue,
                      scale: 20,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Premium',style: TextStyle(color: Colors.black),)
                ],
              ),
            )),
            //  currentAccountPicture: ClipRRect(
            //   borderRadius: BorderRadius.circular(50),
            //   child: Image.asset('images/a.jpg')),
            decoration: BoxDecoration(
              color: Colors.green
              // image: DecorationImage(image: AssetImage('assets/a.jpg'),fit: BoxFit.cover)
            ),
          ),
          ListTile(
            leading: Image.asset('images/wallet.png',scale: 25,),
            title: Text('Wallet'),
            onTap: (){
          
            },
          ),
          ListTile(
            leading: Image.asset('images/history.png',scale: 25,),
            title: Text('History'),
            onTap: (){
             
            },
          ),
            ListTile(
            leading: Image.asset('images/money.png',scale: 25,),
            title: Text('Rikaab points'),
            onTap: (){
             
            },
          ),
             ListTile(
            leading: Image.asset('images/notification.png',scale: 25,),
            title: Text('Notifications'),
            onTap: (){
             
            },
          ),
            ListTile(
            leading: Image.asset('images/lottery.png',scale: 25,),
            title: Text('Spin and win history'),
            onTap: (){
             
            },
          ),
               ListTile(
            leading: Image.asset('images/phone.png',scale: 25,),
            title: Text('Contact Us'),
            onTap: (){
             
            },
          ),
               ListTile(
            leading: Image.asset('images/out.png',scale: 25,),
            title: Text('Logout'),
            onTap: (){
             
            },
          ),
        ],
      ),
    );
  }
}
