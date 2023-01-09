import 'package:coffee_shop_sean/constant/image_string.dart';
import 'package:flutter/material.dart';

class ServeWithCard extends StatelessWidget {
  final String description;
  final String title;
  const ServeWithCard(
      {super.key, required this.description, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: CircleAvatar(
                backgroundImage: AssetImage(tCoffee),
                radius: 47,
              ),
            ),
          ),
          Text(title),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 150,
            ),
            child: Text(
              description,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
