import 'package:flutter/material.dart';
import 'package:food_app/pages/main_page.dart';

class Burger extends StatelessWidget {
  const Burger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: 430,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('asset/images/burger.jpg') )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 58,left: 10),
                    child: Container(
                      height:40,
                      width: 40,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                      }, icon: Icon(Icons.arrow_back)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 58,right: 10),
                    child: Container(
                      height:40,
                      width: 40,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),

                    ),
                  ),
                ],
              ),
            ],
          ),
          Text("Burger ",style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 30),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left:50),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.watch_later_outlined,color: Colors.grey,),
                Text('15 min'),
                SizedBox(width: 20,),
                Icon(Icons.local_fire_department_rounded,color: Colors.orangeAccent,),
                Text('590'),
                SizedBox(width: 20,),
                Icon(Icons.star,color: Colors.yellow,),
                Text('4.9',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('(1.7k reviews)'),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 20,
            thickness: 1,
            indent: 5,
            endIndent: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left:18,right:18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$50.00",style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.orangeAccent),),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white10 ,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  height: 60,
                  width: 130,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:Colors.grey,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        height:40,
                        width: 40,
                        child: Center(child: Text("-",style:TextStyle(fontSize: 22,color: Colors.white),)),
                      ),
                      Text("2",style: TextStyle(fontSize: 22),),
                      Container(
                        decoration: BoxDecoration(
                          color:Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        height:40,
                        width: 40,
                        child: Center(child: Text("+",style:TextStyle(fontSize: 22,color: Colors.white),)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: const Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('About the food',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                  SizedBox(height:20,),
                  Text("A burger is a patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor. Burgers are considered an American food but are popular around the world.")
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: InkWell(
              onTap: (){},
              child: Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.black87 ,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Center(child: Text('Add To Order\$100',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20 ),)),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
