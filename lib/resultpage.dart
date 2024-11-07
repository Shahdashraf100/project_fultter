import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmiResult;

  const ResultPage({Key? key, required this.bmiResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Text(
          'Your BMI is: ${bmiResult.toStringAsFixed(1)}',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
