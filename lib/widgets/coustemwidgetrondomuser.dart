import 'package:flutter/material.dart';
class userron extends StatelessWidget {
   userron({super.key,required this.fullname,required this .Email,required this.image});
final String fullname;
final String Email;
final String image;

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blueGrey,
      child: Column(

        children: [

          SizedBox(height: 20,),
          Text(fullname),
          SizedBox(height: 3,),
          Text(Email),
          SizedBox(height: 3,),
         Image.network(image)

        ],
      ),
    );
  }
}
