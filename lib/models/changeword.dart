import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:secound/classvisibility.dart';
class changeword extends StatelessWidget {
  const changeword({super.key});


  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<visa>(context,listen: false);
    return  Scaffold(
      appBar: AppBar(
        title: Text("visibility Toggle"),
      ),
      body: Container(
        width: double.infinity,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(builder: (BuildContext context,visa value, Widget? child)
            {
              return Visibility(visible: value.isshow, child: Text("iam shahd"));

            },)
            ,
            SizedBox(height: 23,),
            Consumer(builder: (BuildContext context,visa value, Widget? child)
            {
              return  ElevatedButton(onPressed: (){
                value.funchange();
              }
                , child:Text(value.isshow?"hide":"show"),
              );
            }, )
          ],
        )
      ),
    );
  }
}
