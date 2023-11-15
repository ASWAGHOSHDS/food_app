import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(home:Burger_List()));}

class Salad_List extends StatelessWidget {
  Salad_List({super.key});

  var Simages = [
    "asset/Salads/Greek.webp",
    "asset/Salads/Caesar.jpeg",
    "asset/Salads/chicken.jpeg",
    "asset/Salads/Tuna.png",
    "asset/Salads/Italian.jpeg",
    "asset/Salads/Crab-Salad-main.jpg.webp",
  ];
  var Salad_names = [
    'Greak Salad',
    'Ceasar Salad',
    'Chicken Salad',
    'Tuna Salad',
    'Italian Salad',
    'Crab Salad'
  ];
  var Srate = [
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
                subtitle: Text(Salad_names[index]),
                leading:Image(
                    image: AssetImage(Simages[index])) ,
                title: Text(Srate[index]),
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
