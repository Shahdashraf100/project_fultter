  import 'package:flutter/material.dart';
  class caluc extends StatelessWidget {
    int result;
    caluc({super.key,required this.result});



    @override
    Widget build(BuildContext context) {
      return  Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(centerTitle: true,title: Text("BMI Calculator",style: TextStyle(color: Colors.white),),backgroundColor: Colors.black,),
        body: Container(
          width: double.infinity,
          child:Column(
            children: [
              Text("YOUR Result",style: TextStyle(color: Colors.white,fontSize: 33),),
              SizedBox(height: 44),
              Container(
  color: Colors.blueGrey,
                width: 400,
                height: 400,
                child: Column(
                  children: [
                    SizedBox(height: 44,),
                    Text("value",style: TextStyle(color: Colors.black,fontSize: 33),),

                  SizedBox(height: 33,),
                  Text("$result",style: TextStyle(color: Colors.white,fontSize: 33),),
                    SizedBox(height: 33,),

                    Text("you have good body",style: TextStyle(fontSize: 33,color: Colors.white),)
                    ,
                    SizedBox(height: 33,),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text(" Re_Calcoulate",style: TextStyle(color: Colors.white)),style: ElevatedButton.styleFrom(backgroundColor: Colors.pink,),),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
  }
