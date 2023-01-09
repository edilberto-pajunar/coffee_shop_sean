import 'package:flutter/material.dart';

class CoffeeRating extends StatefulWidget {
  final IconData icon;
  const CoffeeRating({super.key, required this.icon});

  @override
  State<CoffeeRating> createState() => _CoffeeRatingState();
}

class _CoffeeRatingState extends State<CoffeeRating> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        widget.icon,
      ),
    );
  }
}
