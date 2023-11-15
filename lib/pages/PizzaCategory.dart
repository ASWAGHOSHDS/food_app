import 'package:flutter/material.dart';
import 'package:food_app/pages/list/PizzaList.dart';

class Pizza_Category extends StatelessWidget {
  const Pizza_Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("PIZZA",style: TextStyle(color: Colors.black87),),
      ),
      body: Column(
        children: [
        Container(
        height: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("asset/images/lots-of-pizza.jpg"))),
      ),
          SizedBox(
            height: 20,),
          Expanded(child: Pizza_List())
        ]
    )
    );
  }
}
