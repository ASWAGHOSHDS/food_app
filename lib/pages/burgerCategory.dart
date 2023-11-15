import 'package:flutter/material.dart';
import 'package:food_app/pages/list/BurgerList.dart';

import 'Cart page.dart';

class Burger_Category extends StatelessWidget {
   Burger_Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('BURGERS',style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_Page()));
          }, icon: Icon(Icons.shopping_cart,color: Colors.orange,))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("asset/images/burger category.jpg"))),
          ),
          SizedBox(
            height: 20,),
          Expanded(child: Burger_List())
        ],
      ),
    );
  }
}
