import 'package:bmi_calculator/views/bmi_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMiCalculator());
}

class BMiCalculator extends StatelessWidget {
  const BMiCalculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const BMIView(),
    );
  }
}

