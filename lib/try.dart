import 'package:flutter/material.dart';
class tryy extends StatelessWidget {
  const tryy({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(


        ),
    body: SingleChildScrollView(
    child: Container(
    width: double.infinity,
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        Image.network("https://th.bing.com/th/id/OIP.TthB6_GDo6cHjNF3-qVcrwHaKP?w=740&h=1024&rs=1&pid=ImgDetMain"),


]
    ),
    )

    ),

    );
  }
}
