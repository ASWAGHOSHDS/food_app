import 'package:flutter/material.dart';
import 'package:food_app/pages/list/CakesList.dart';

class Cake_Category extends StatelessWidget {
  const Cake_Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("CAKE",style: TextStyle(color: Colors.black87),),
      ),
      body: Column(
        children: [
        Container(
        height: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("asset/images/cake bg.jpeg"))),
      ),
          SizedBox(
            height: 20,),
          Expanded(child: Cake_List())
      ]
      )
    );
  }
}
