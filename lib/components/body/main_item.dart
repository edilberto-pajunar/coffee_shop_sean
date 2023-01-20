import 'package:coffee_shop_sean/constant/image_string.dart';
import 'package:flutter/material.dart';

class MainItem extends StatelessWidget {
  const MainItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: Colors.brown[300],
        radius: 350,
        child: Image(
          fit: BoxFit.fitWidth,
          image: AssetImage(
            tMochaCoffee,
          ),
        ));
  }
}
