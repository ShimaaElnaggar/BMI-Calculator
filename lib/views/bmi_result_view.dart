
import 'package:flutter/material.dart';

class BMIResultView extends StatelessWidget {
  const BMIResultView({super.key, required this.age, required this.result, required this.isMale, });
final int age;
final double result;
final bool isMale;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(" BMI RESULT "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isMale ? Colors.blue : Colors.pink,
                ),
                child: Center(child: Text("Gender : ${ isMale? "MALE" : "FEMALE"}")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isMale ? Colors.blue : Colors.pink,
                ),
                child: Center(child: Text("BMI : ${result.round()}"),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isMale ? Colors.blue : Colors.pink,
                ),
                child: Center(child: Text("Age : $age"),),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
