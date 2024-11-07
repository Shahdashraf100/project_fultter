import 'package:flutter/material.dart';
class todofrist extends StatelessWidget {
  const todofrist({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.lightBlueAccent,
        child: Column(
          children: [
            Row(
              children: [

                  Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 90),
                      child:Row(children:[Icon(Icons.list),Text("to do list")] ,)
                  ),
              ]
            ),
            Container(
              height: 33,
              color: Colors.white,
              child: Column(
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
