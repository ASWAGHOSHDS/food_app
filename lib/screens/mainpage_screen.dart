import 'package:flutter/material.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("asset/images/bg2.jpg"))),
        ),
        Padding(
          padding: const EdgeInsets.only(top:50,left: 15),
          child: Container(
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.all(Radius.circular(80)),
                      image: DecorationImage(image: AssetImage("asset/icons/burger.png"))),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi, User',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                    Text("Let's grab your order",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ]),
                SizedBox(width: 90,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(80)
                  ),
                  child: Badge(
                    label: Text('9+'),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,)),
                  ),
                )
              ],
            ),
          ),
        ),

      ],
    );
  }
}
