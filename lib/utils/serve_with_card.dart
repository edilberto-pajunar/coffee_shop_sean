import 'package:coffee_shop_sean/constant/image_string.dart';
import 'package:flutter/material.dart';

class ServeWithCard extends StatelessWidget {
  const ServeWithCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: CircleAvatar(
              backgroundImage: AssetImage(tCoffee),
              radius: 47,
            ),
          )),
    );
  }
}
