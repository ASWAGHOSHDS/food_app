import 'package:flutter/material.dart';
import 'package:food_app/pages/BottomNavi%20pages/Settingspage.dart';
import '../main_page.dart';
import 'favouritepage.dart';

class Account_page extends StatelessWidget {
  const Account_page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Profile",style: TextStyle(color: Colors.black),),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.white,
      //   onPressed: (){},
      //   child: IconButton(onPressed: (){},
      //       icon: Icon(Icons.shopping_cart,color: Colors.orange.shade300,)),
      // ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Colors.white70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
            }, icon: Icon(Icons.home)),
            IconButton(onPressed: (){}, icon: Icon(Icons.account_circle)),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Favourite()));
            }, icon: Icon(Icons.favorite_border)),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings_page()));
            }, icon: Icon(Icons.settings)),

          ],
        ),
      ),
    );
  }
}
