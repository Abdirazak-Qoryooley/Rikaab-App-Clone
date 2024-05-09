import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class history extends StatelessWidget {
  const history({super.key});

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
            child: Text('History',style: TextStyle(fontSize: 18,color: Colors.white),),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                            
                    width: 37,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('Taxi',style: TextStyle(color: Colors.white),)),
                  ),
                ),
               
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                            
                    width: 37,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('Food',style: TextStyle(color: Colors.black),)),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                            
                    width: 37,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('suuq',style: TextStyle(color: Colors.black),)),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                            
                    width: 37,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('Gas',style: TextStyle(color: Colors.black),)),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                            
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('Emuraabaha',style: TextStyle(color: Colors.black),)),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                            
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('Delivery',style: TextStyle(color: Colors.black),)),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                            
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('Travel',style: TextStyle(color: Colors.black),)),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}