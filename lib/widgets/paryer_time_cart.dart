import 'package:flutter/material.dart';
class Cardprayer extends StatelessWidget {
  Cardprayer ({super.key,required this.nameprayer,required this.timeprayer});
  final String nameprayer;
  final String timeprayer;
  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: EdgeInsets.all(10),
      shadowColor: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Text(nameprayer),
          SizedBox(height: 3,),
          Text(timeprayer)
        ]
      ),
    );
  }
}
