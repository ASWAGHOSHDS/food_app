import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(home:Burger_List()));}

class Burger_List extends StatelessWidget {
   Burger_List({super.key});

   var Bimages = [
     "asset/Burgers/veg paneer.jpeg",
     "asset/Burgers/beef regular.jpg",
     "asset/Burgers/chicken.jpg",
     "asset/Burgers/double cheese.jpg",
     "asset/Burgers/beef double patty.jpg",
     "asset/Burgers/Premium.jpg",
   ];
   var Burger_names = [
     'Veg Burger',
     'Beef Regular',
     'Chicken Burger',
     'Double Cheese',
     'Beef Double Patty',
     'Premium'
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
