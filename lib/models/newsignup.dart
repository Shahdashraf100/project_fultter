import 'package:flutter/material.dart';
import 'package:secound/login.dart';

import '../newsignin.dart';

class newsignup extends StatelessWidget {
  const newsignup({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("sign up Page",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),
      body: SingleChildScrollView
        (
          child:Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network("https://tse3.mm.bing.net/th/id/OIP.55IGwIn2JO7O4RazfVvGwAHaDg?rs=1&pid=ImgDetMain",width: 500,height: 330,),
                SizedBox(height: 44,),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text("name"),
                    border: OutlineInputBorder(gapPadding: 7),



                  ),
                ),
                SizedBox(height: 11,),

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

                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text("con Password"),
                    border: OutlineInputBorder(gapPadding: 7),



                  ),
                ),
                SizedBox(height: 33,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have account"),
                    TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>signinnew()));
                    } ,child: Text("sign in",style: TextStyle(color: Colors.blue),)),

                  ]

                ),
                ElevatedButton(onPressed: (){}, child: Text("Sign up",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),),
                SizedBox(height: 99,),




              ],
            ),
          )

      ),
    );

  }
}



