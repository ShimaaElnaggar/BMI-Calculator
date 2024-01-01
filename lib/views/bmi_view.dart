
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
                fontSize: 22,
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
            Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(20),
                 child: Container(
                   decoration: BoxDecoration(
                     color: Colors.grey.withOpacity(0.2),
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       const Text("HEIGHT"),
                       const Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.baseline,
                         textBaseline: TextBaseline.alphabetic,
                         children: [
                           Text("180",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
                           Text("cm"),
                         ],
                       ),
                       Slider(
                           value: 120,
                           max: 220,
                           min: 80,
                           onChanged: (value){

                           },
                       ),

                     ],
                   ),
                 ),
               ),
           ),
           Expanded(
             child:  Padding(
               padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
               child: Row(
                 children: [
                   Expanded(
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.grey.withOpacity(0.2),
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           const Text("AGE"),
                            const Text("180",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               FloatingActionButton(
                               onPressed: (){},
                               child: const Icon(Icons.remove),),
                               const SizedBox(width: 10,),
                               FloatingActionButton(
                                 onPressed: (){},
                                 child: const Icon(Icons.add),),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ),
                   const SizedBox(width: 20,),
                   Expanded(
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.grey.withOpacity(0.2),
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           const Text("WEIGHt"),
                           const Text("180",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               FloatingActionButton(
                                 onPressed: (){},
                                 child: const Icon(Icons.remove),),
                               const SizedBox(width: 10,),
                               FloatingActionButton(
                                 onPressed: (){},
                                 child: const Icon(Icons.add),),
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


