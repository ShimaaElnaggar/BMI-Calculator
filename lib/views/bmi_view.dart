
import 'package:bmi_calculator/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class BMIView extends StatelessWidget {
  const BMIView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: Text(
              "BMI CALCULATOR",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
           const Expanded(
               child:  Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                   children: [
                     CustomContainer(text: 'MALE', image: 'assets/images/male.png',),
                     SizedBox(width: 20,),
                     CustomContainer(text: 'FEMALE', image: 'assets/images/female.png',),
                   ],
                 ),
               ),
           ),
           Expanded(child: Container(color:Colors.blue,child: const Column())),
           Expanded(child: Container(color:Colors.brown,child: const Row())),
          SizedBox(
            width: double.infinity,
            child: MaterialButton(
              color: Colors.pink,
                onPressed: (){},
              child: const Text("CALCULATE"),
            ),
          ),
        ],
      ),
    );
  }
}


