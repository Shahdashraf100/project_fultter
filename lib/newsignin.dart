import 'package:flutter/material.dart';
import 'package:secound/login.dart';
import 'package:secound/models/newsignup.dart';

class signinnew extends StatelessWidget {
  const signinnew({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Login Page",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),
      body: SingleChildScrollView
        (
        child:Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://tse3.mm.bing.net/th/id/OIP.55IGwIn2JO7O4RazfVvGwAHaDg?rs=1&pid=ImgDetMain",width: 500,height: 330,),
               TextFormField(
                 decoration: InputDecoration(
                   label: Text("Email"),
                   border: OutlineInputBorder(
                     borderSide: BorderSide(width: 2),
                   ),

                 ),
               ),
              SizedBox(height: 23,),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(gapPadding: 7),



                ),
              ),
              SizedBox(height: 33,),
              TextButton(onPressed: (){} ,child: Text("forget_Password",style: TextStyle(color: Colors.blue),)),
              ElevatedButton(onPressed: (){}, child: Text("Login",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),),
              SizedBox(height: 99,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New_User"),
                  TextButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>newsignup()));}, child: Text("Create_Account"))
                ],
              )


            ],
          ),
        )

      ),
    );

  }
}



