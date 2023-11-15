import 'package:flutter/material.dart';
import 'package:food_app/pages/CakeCategory.dart';
import 'package:food_app/pages/PizzaCategory.dart';
import 'package:food_app/pages/RamenCategory.dart';
import 'package:food_app/pages/SaladCategory.dart';
import 'package:food_app/pages/burgerCategory.dart';

class  Category extends StatelessWidget {
  const  Category({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18,left:18),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Burger_Category()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.grey.shade300
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        child: Image(
                          height:40,
                            image: AssetImage("asset/icons/burger.png")),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Text("Burger"),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18,left:18),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Ramen_Category()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.grey.shade300
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        child: Image(
                            height:40,
                            image: AssetImage("asset/icons/ramen.png")),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Text("Ramen"),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18,left:18),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Pizza_Category()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.grey.shade300
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        child: Image(
                            height:40,
                            image: AssetImage("asset/icons/pizza.png")),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Text("Piza"),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18,left:18),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Salad_Category()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.grey.shade300
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        child: Image(
                            height:40,
                            image: AssetImage("asset/icons/salad.png")),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Text("Salad"),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18,left:18),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Cake_Category()));

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.grey.shade300
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        child: Image(
                            height:40,
                            image: AssetImage("asset/icons/cake.png")),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Text("Cake"),
              )
            ],
          ),


        ],
      ),
    );
  }
}
