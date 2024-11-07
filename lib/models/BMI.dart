import 'package:flutter/material.dart';
import 'package:secound/models/BMIclass.dart';
import 'package:provider/provider.dart';
import 'package:secound/resultpage.dart';

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    var provid = Provider.of<Bmidata>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Consumer<Bmidata>(
                  builder: (context, value, child) {
                    return GestureDetector(
                      onTap: () {
                        value.selectGender('male');
                      },
                      child: Container(
                        color: value.selectedGender == 'male'
                            ? Colors.pink
                            :Colors.blue,
                        width: 150,
                        height: 100,
                        child: Column(
                          children: [
                            Icon(Icons.male, color: Colors.white, size: 66),
                            Text("Male", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(width: 110),
                Consumer<Bmidata>(
                  builder: (context, value, child) {
                    return GestureDetector(
                      onTap: () {
                        value.selectGender('female');
                      },
                      child: Container(
                        color: value.selectedGender == 'female'
                            ? Colors.pink
                            : Colors.blue,
                        width: 150,
                        height: 100,
                        child: Column(
                          children: [
                            Icon(Icons.female, color: Colors.white, size: 66),
                            Text("Female", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 100),
            Container(
              color: Colors.white,
              width: 400,
              height: 190,
              child: Column(
                children: [
                  Text("Height", style: TextStyle(fontSize: 33)),
                  Consumer<Bmidata>(
                    builder: (context, value, child) {
                      return Text(
                        "${value.hight.round()}",
                        style: TextStyle(fontSize: 33),
                      );
                    },
                  ),
                  Consumer(
                    builder: (BuildContext context,Bmidata value, Widget? child) {
                      return  Slider(
                        value: value.hight,
                        label: value.hight.round().toString(),
                        min: 10,
                        max: 300,
                        onChanged: (newHeight) {
                          provid.conehight(newHeight);
                        },
                      );
                    },

                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            Row(
              children: [
                Container(
                  color: Colors.blueAccent,
                  width: 150,
                  height: 170,
                  child: Column(
                    children: [
                      Text(
                        "Weight",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Consumer<Bmidata>(
                        builder: (context, value, child) {
                          return Text(
                            "${value.wight}",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          );
                        },
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              provid.incresdewight();
                            },
                            icon: Icon(Icons.add),
                            iconSize: 55,
                          ),
                          IconButton(
                            onPressed: () {
                              provid.decresedwight();
                            },
                            icon: Icon(Icons.remove),
                            iconSize: 55,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 100),
                Container(
                  color: Colors.pink,
                  width: 150,
                  height: 170,
                  child: Column(
                    children: [
                      Text(
                        "Age",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Consumer<Bmidata>(
                        builder: (context, value, child) {
                          return Text(
                            "${value.age}",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          );
                        },
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              provid.incresedage();
                            },
                            icon: Icon(Icons.add),
                            iconSize: 55,
                          ),
                          IconButton(
                            onPressed: () {
                              provid.decresdage();
                            },
                            icon: Icon(Icons.remove),
                            iconSize: 55,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            Container(
              width: 888,
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  double bmiResult = provid.calculateBmi();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage(bmiResult: bmiResult)));
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
