import 'package:flutter/material.dart';
import 'package:secound/claschangecolor.dart';
import 'package:secound/models/pagecolor.dart';
import 'package:provider/provider.dart';
class visibilityToggle extends StatelessWidget {
  visibilityToggle({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<colorofpage>(context,listen:false);
    return  Scaffold(

      appBar: AppBar(
        title: Text("visibility Toggle"),
      ),
      body:
       Consumer(builder: (BuildContext context,colorofpage value, Widget? child)
      {
      return
       Container(
         color:pro.change?Colors.blue:Colors.white,
         child: GestureDetector(
              onTap: () {
                value.chan();

              },
         ),
       );

      },

       ),
    );
  }

}
