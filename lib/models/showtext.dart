import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:secound/models/classchange.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    var obj = Provider.of<TextProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Text Button",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<TextProvider>(
                builder: (context, textProvider, child) {
                  return Text(
                    " ${textProvider.inputText}",
                    style: TextStyle(fontSize: 24),
                  );
                },
              ),
               SizedBox(height: 50),
              TextField(
                onChanged: (text) {
                  obj.Text(text);
                },
                decoration: InputDecoration(
                  labelText: 'Enter text',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

