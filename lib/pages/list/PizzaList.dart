import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(home:Burger_List()));}

class Pizza_List extends StatelessWidget {
  Pizza_List({super.key});

  var Bimages = [
    "asset/Pizzas/Margherita pizza.jpeg",
    "asset/Pizzas/cheese.jpg",
    "asset/Pizzas/classic chicken.jpg",
    "asset/Pizzas/sausage.jpg",
    "asset/Pizzas/hawaiin.jpg",
    "asset/Pizzas/combo.jpg",
  ];
  var Burger_names = [
    'Margherita',
    'Regular Cheese',
    'Chicken Pizza',
    'Classic Sausage',
    'Hawaiin Pizza',
    'Premium Combo'
  ];
  var Brate = [
    '\$30',
    '\$50',
    '\$40',
    '\$45',
    '\$65',
    '\$70',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
          shrinkWrap: true,
          children:List.generate(6, (index) => Card(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: ListTile(
                subtitle: Text(Burger_names[index]),
                leading:Image(
                    image: AssetImage(Bimages[index])) ,
                title: Text(Brate[index]),
                trailing: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(9)
                  ),
                  child: Center(child: Text('Add')),
                ),
              ),
            ),
          ))
      ),
    );
  }
}
