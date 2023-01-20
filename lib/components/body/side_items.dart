import 'package:coffee_shop_sean/constant/image_string.dart';
import 'package:flutter/material.dart';

class SideItems extends StatelessWidget {
  const SideItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
          width: 200,
          height: 700,
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.brown[200],
                    radius: 100,
                    child: Image(
                      image: AssetImage(
                        tMochaCoffee,
                      ),
                    ),
                  ),
                );
              }))),
    );
  }
}
