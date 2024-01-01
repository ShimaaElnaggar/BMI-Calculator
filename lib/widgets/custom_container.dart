
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key, required this.text, required this.image, required this.color,
  });
final String text;
final String image;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 90,
            width: 90,
            decoration:  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                )
            ),
          ),
           Text(text),
        ],
      ),
    );
  }
}