import 'package:flutter/material.dart';
class list extends StatelessWidget {
   list({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold  (
    body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5)
        , itemBuilder: (context, index) {
          return Container(

          );
        },),
    );
  }
}
