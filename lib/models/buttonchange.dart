import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:secound/models/classchange-page.dart';
class buttonchange extends StatelessWidget {
   buttonchange({super.key});

  @override

  Widget build(BuildContext context) {
    var obj = Provider.of<Ofandon>(context, listen: false);
    return  Scaffold(
      appBar: AppBar(
        title: Text("Toggle Button"),
      ),
     body: Container(
       width: double.infinity,
       child:Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [

              Consumer(builder: (BuildContext context,Ofandon value, Widget? child)
            {
                   return
                     Container(
                  color:obj.ison?Colors.green:Colors.red,
                     child: MaterialButton(onPressed: ()
            {
                obj.funchange();
            },
                    child:Text(value.ison?"on":"off")),
            );
         },)
         ],
       )

     ),

    );
  }
}
