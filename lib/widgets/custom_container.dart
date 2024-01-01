
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key, required this.text, required this.image,
  });
final String text;
final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.2),
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
      ),
    );
  }
}