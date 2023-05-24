import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  var isMale = true;
  var height = 170.0;
  var color = Colors.grey[400];
  var weight = 70;
  var age = 18;
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calculator'
        ),
      ),
      body: Column(
        children:
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(color: isMale? Colors.blue : color,
                            borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image(image: AssetImage("asserts/images/male.png"),
                              height: 90.0,
                            ),
                            Text("MALE",
                              style: TextStyle(fontSize: 25.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: !isMale? Colors.blue : color,
                            borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image(image: AssetImage("asserts/images/female.png"
                              ),
                              height: 90.0,
                            ),
                            Text("FEMALE",
                              style: TextStyle(fontSize: 25.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),   
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text("HEIGHT",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30.0
                        // color: Colors.white,
                        ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children:
                      [
                        Text("${height.round()}",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 50.0
                            // color: Colors.white,
                          ),
                        ),
                        Text("CM",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                          ),
                        ),
                      ],
                    ),
                    Slider(value: height,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                      max: 220,
                      min: 80,
                    ),
                  ],
                ),
              ),
            ),
          ),  
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text("WEIGHT",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 30.0
                              // color: Colors.white,
                            ),
                          ),
                          Text("$weight",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 50.0
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(Icons.remove),
                                mini: true,
                              ),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(Icons.add),
                                mini: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 20.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text("AGE",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 30.0
                              // color: Colors.white,
                            ),
                          ),
                          Text("$age",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 50.0
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(Icons.remove),
                                mini: true,
                              ),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(Icons.add),
                                mini: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60.0,
            color: Colors.blue,
            child: MaterialButton(onPressed: (){},
              child: Text("Calculate",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
