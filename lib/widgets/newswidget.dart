import 'package:flutter/material.dart';
class widgetnews extends StatelessWidget {
   widgetnews({required this .imgae,required this .Title,required this.Des});
String imgae;
String Des;
String Title;

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:Column(
        children: [
          Image.network(imgae),
          SizedBox(height: 5,),
          Text(Title,style: TextStyle(fontStyle:FontStyle.italic,fontSize: 22,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text(Des),
          SizedBox(height: 5,),

        ],
      ),
    );
  }
}
