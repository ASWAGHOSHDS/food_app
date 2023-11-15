import 'package:flutter/material.dart';
import 'package:food_app/pages/list/RamenList.dart';

class Ramen_Category extends StatelessWidget {
  const Ramen_Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('RAMEN NOODLES',style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("asset/images/Ramen category.jpg"))),
          ),
          SizedBox(
            height: 20,),
          Expanded(child: Ramen_List())
        ],
      ),
    );
  }
}
