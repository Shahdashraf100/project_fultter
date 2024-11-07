import 'package:flutter/material.dart';
import '../models/fruts.dart';

class Item extends StatelessWidget {
  Item({required this.frut,super.key});
 Fruits frut;
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white30,
      height: 70,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
              radius: 50.0,
              backgroundImage:AssetImage(frut.image!)),
          SizedBox(width:33),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(frut.name!,style: TextStyle(fontWeight: FontWeight.bold),),
              Text(frut.detiels!)

            ],
          )
        ],
      ),

    );
  }
}
