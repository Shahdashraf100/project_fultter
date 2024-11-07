import 'package:flutter/material.dart';
class todowidget extends StatelessWidget {
   todowidget({super.key,required this.tasktitle});
final String tasktitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text
        (
          tasktitle,

      ),
    );
  }
}
