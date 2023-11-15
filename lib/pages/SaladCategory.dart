import 'package:flutter/material.dart';
import 'package:food_app/pages/list/Salad.dart';

class Salad_Category extends StatelessWidget {
  const Salad_Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("SALAD",style: TextStyle(color: Colors.black87),),
      ),
      body: Column(
        children: [
        Container(
        height: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("asset/images/Salads bg2.jpeg"))),
      ),
          SizedBox(
            height: 20,),
          Expanded(child: Salad_List()),
    ]
      )
    );
  }
}
