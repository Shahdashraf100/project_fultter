import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/conterprovider.dart';
class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Consumer
              (builder: (BuildContext context, Counterpr value , Widget? child)
            {
              return  Text("${value.num}",style: TextStyle(fontSize: 80,color: Colors.black),);

            },
           ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  SizedBox(
                    width: 40,
                  ),

                  Consumer(
                    builder: (BuildContext context,Counterpr value, Widget? child)
                    {
                      return FloatingActionButton(onPressed: (){
                        value.increased();
                      },
                        child: Icon(Icons.add,color: Colors.black,)
                        ,
                        backgroundColor: Colors.blue,hoverColor: Colors.black,
                      );
                    },

                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Consumer(
                    builder: (BuildContext context,Counterpr value, Widget? child)
                    {
                      return FloatingActionButton(onPressed: (){
                        value.decresed();
                      },
                        child: Icon(Icons.remove,color: Colors.black,)
                        ,
                        backgroundColor: Colors.blue,hoverColor: Colors.black,
                      );
                    },

                  ),
                  SizedBox(
                    width: 40,
                  ),
                ]



            )
          ],
        ),
      ),
    );
  }
}
