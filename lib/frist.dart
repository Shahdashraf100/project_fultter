import 'package:flutter/material.dart';
import 'package:secound/signup.dart';
class frist extends StatelessWidget {
  const frist({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email=TextEditingController();
    TextEditingController pass=TextEditingController();
    return  Scaffold(


      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle:true,
        title:Text("Sign_In"),
        leading: IconButton(onPressed:(){ print("hello") ;}, icon: Icon(Icons.account_box)),
      ),
      body: SingleChildScrollView(
        child: Container(

          width: double.infinity,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.network("https://th.bing.com/th/id/OIP.TthB6_GDo6cHjNF3-qVcrwHaKP?w=740&h=1024&rs=1&pid=ImgDetMain"),

              Container(
                width: 320,
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: 'Email',
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
              )
              ,
              SizedBox(height: 26,),

              ElevatedButton(onPressed: (){
                if(email.text=="shahdashraf"&&pass.text=="321"){
                  print(email.text);
                  print(pass.text);
                }else{
                  print("can't sign in");
                }
              }, child: Text("login",style: TextStyle(color: Colors.black)),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),),
              SizedBox(height: 26,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Text("don't have account"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>signup()));
                  }, child: Text("sign_up",style:TextStyle(color: Colors.purple)))

                ],
              )
            ],

          ),
        ),
      ),



    );
  }
}
