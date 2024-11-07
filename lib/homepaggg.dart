import 'package:flutter/material.dart';
import 'package:secound/components/item.dart';

import 'models/fruts.dart';

class homepaggg extends StatelessWidget {

List<Fruits>fruitslist=[
  Fruits(image: "asset/apple.jpg",name: "Apple",detiels: "Has sale to 50%"),
  Fruits(image: "asset/banana.jpg",name: "banana",detiels: "Has sale to 10%"),
  Fruits(image: "asset/blueberry.jpg",name: "blueberry",detiels: "Has sale to 30%"),
  Fruits(image: "asset/grap.jpg",name: "graps",detiels: "Has sale to 20%"),
  Fruits(image: "asset/stro.jpg",name: "stro",detiels: "Has sale to 50%"),
];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.list)),
        centerTitle: true,
        title: Text("fruits"),
        
      ),
      body: ListView.builder(
        itemCount: fruitslist.length,
        itemBuilder: (context,index){
          return Item(frut:fruitslist[index]);
        }
      ),
      
    );
  }
}
