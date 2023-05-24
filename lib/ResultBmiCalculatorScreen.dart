import 'package:flutter/material.dart';

class ResultBmiCalculator extends StatelessWidget {
  ResultBmiCalculator({
    required this.result,
    required this.age,
    required this.isMale
});

  final int result;
  final int age;
  final bool isMale;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded
          ),
        ),
        title: Text("Result"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            Text("Gender: ${isMale?"MALE" : "FEMALE"}",
            style: TextStyle(
                fontSize: 40.0,
              fontWeight: FontWeight.w700
              ),
            ),
            Text("Result: $result",
            style: TextStyle(
                fontSize: 40.0,
              fontWeight: FontWeight.w700
              ),
            ),
            Text("Age: $age",
            style: TextStyle(
                fontSize: 40.0,
              fontWeight: FontWeight.w700
              ),
            ),
          ],
        ),
      ),
    );
  }
}
