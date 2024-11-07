import 'package:flutter/material.dart';
import 'package:secound/homepaggg.dart';
import 'package:secound/try.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username=TextEditingController();
    TextEditingController pass=TextEditingController();
    TextEditingController conpass=TextEditingController();
    TextEditingController phone=TextEditingController();
    return  Scaffold(
        appBar: AppBar(
         centerTitle: true,
         title: Text("Sign_Up"),
        ),
        body: SingleChildScrollView(
    child: Container(

    width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
SizedBox(height: 30,),

              Container(
                width: 320,
                child: TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                    icon: Icon(Icons.account_box),
                    labelText: 'user_name*',
                  ),
                ),
              ),
              SizedBox(height: 49,),

              Container(
                width: 320,
                child: TextFormField(
                    controller: pass,

                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration:  InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'password *',

                    )
                ),
              ),
              SizedBox(height: 49,),

              Container(
                width: 320,
                child: TextFormField(
                    controller: conpass,

                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration:  InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'Con_password *',

                    )
                ),
              ),
              SizedBox(height: 49,),

              Container(
                width: 320,
                child: TextFormField(
                    controller: phone,
                    decoration:  InputDecoration(
                      icon: Icon(Icons.phone),
                      labelText: 'phone_number *',

                    )
                ),

              ),
              SizedBox(height: 90,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>homepaggg()));

              }
                , child: Text("login",style: TextStyle(color: Colors.black)),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),),
              SizedBox(height: 26,),
            ]


        ),
        ),
        ),
    );
  }
}
