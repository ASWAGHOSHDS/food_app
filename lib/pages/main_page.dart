import 'package:flutter/material.dart';
import 'package:food_app/%20widgets/products_screen.dart';
import 'package:food_app/pages/BottomNavi%20pages/Accountpage.dart';
import 'package:food_app/pages/BottomNavi%20pages/Settingspage.dart';
import 'package:food_app/pages/BottomNavi%20pages/favouritepage.dart';
import 'package:food_app/pages/Cart%20page.dart';
import '../ widgets/Category.dart';
import '../screens/mainpage_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          MainPageScreen(),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Food Category',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20 ),),
                Row(
                  children: [
                    Text('See more',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.east,color: Colors.orangeAccent,))
                  ],
                ),
              ],
            ),
          ),
          Category(),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Food For You',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20 ),
                ),
                Row(
                  children: [
                    Text('All',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down,color: Colors.orangeAccent,))
                  ],
                ),
              ],
            ),
          ),
          Products(),

        ],
      ),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.white,
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_Page()));
         },
       child: Icon(Icons.shopping_cart,color: Colors.orange.shade300,),
     ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Colors.white70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Account_page()));
            }, icon: Icon(Icons.account_circle)),
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
