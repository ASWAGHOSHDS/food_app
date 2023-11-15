import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(home:Burger_List()));}

class Ramen_List extends StatelessWidget {
  Ramen_List({super.key});

  var Bimages = [
    "asset/Ramen/tonkotsu ramen.jpg",
    "asset/Ramen/misoramen3.jpg",
    "asset/Ramen/shoyu ramen.jpeg",
    "asset/Ramen/shio-ramen.jpg",
    "asset/Ramen/Tsukemen Ramen.jpg",
    "asset/Ramen/wakayama ramen.jpg",
  ];
  var Burger_names = [
    'Tonkotsu ramen',
    'Miso Ramen',
    'Shoyu Ramen',
    'Shio Ramen',
    'Tsukemen Ramen',
    'Wakayama Ramen'
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
