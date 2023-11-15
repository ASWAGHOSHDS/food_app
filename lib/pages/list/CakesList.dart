import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(home:Burger_List()));}

class Cake_List extends StatelessWidget {
  Cake_List({super.key});

  var Cimages = [
    "asset/Cakes/vanila.jpeg",
    "asset/Cakes/Vancho.jpeg",
    "asset/Cakes/CaramelCheesecake.jpeg",
    "asset/Cakes/blueberry.jpeg",


  ];
  var Cake_names = [
    'Vanila',
    'Vancho',
    'Caremel cheese',
     'Bluberry CheeseCake',
  ];
  var Crate = [
    '\$30',
    '\$50',
    '\$40',
    '\$45',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
          shrinkWrap: true,
          children:List.generate(4, (index) => Card(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: ListTile(
                subtitle: Text(Cake_names[index]),
                leading:Image(
                    image: AssetImage(Cimages[index])) ,
                title: Text(Crate[index]),
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
