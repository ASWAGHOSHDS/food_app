import 'package:flutter/material.dart';
import 'package:food_app/screens/Burger.dart';
import 'package:food_app/screens/Pizza.dart';
import '../screens/Ramen.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Container(
              height: 270,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  boxShadow:[
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        offset:Offset(1, 5)

                    )
                  ] ,
                  borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Burger()));
                },
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      height: 130,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('asset/images/Burger 2.jpg'))
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.watch_later),
                          SizedBox(width: 6,),
                          Text("15 min"),
                          SizedBox(width: 6,),
                          Text('5km'),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: Text("\$50",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        FloatingActionButton(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add,color: Colors.orange,),
                            onPressed:(){}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Container(
              height: 270,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  boxShadow:[
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        offset:Offset(1, 5)

                    )
                  ] ,
                  borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Pizza()));
                },
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Image(
                        width: 200,
                        image: AssetImage('asset/images/pizza.jpg')),
                    SizedBox(height: 20,),
                    Text('Pizza',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.watch_later),
                          SizedBox(width: 6,),
                          Text("15 min"),
                          SizedBox(width: 6,),
                          Text('5km'),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: Text("\$50",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        FloatingActionButton(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add,color: Colors.orange,),
                            onPressed:(){}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Container(
              height: 270,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  boxShadow:const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        offset:Offset(1,5)
                    )
                  ] ,
                  borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage1()));
                },
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      height: 130,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('asset/images/Ramen 2.jpg'))
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('Ramen ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.watch_later),
                          SizedBox(width: 6,),
                          Text("15 min"),
                          SizedBox(width: 6,),
                          Text('5km'),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: Text("\$50",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        FloatingActionButton(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add,color: Colors.orange,),
                            onPressed:(){}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
