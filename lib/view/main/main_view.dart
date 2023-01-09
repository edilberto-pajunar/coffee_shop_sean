import 'dart:ui';

import 'package:coffee_shop_sean/constant/image_string.dart';
import 'package:coffee_shop_sean/utils/button_card.dart';
import 'package:coffee_shop_sean/utils/serve_with_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'coffee_item.dart';
import 'display_coffee.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              opacity: 0.2,
              image: AssetImage(
                tCoffeeBg,
              ),
            ),
          ),
          child: Row(
            children: [
              CoffeeItem(),
              DisplayCoffee(),
            ],
          ),
        ),
      ),
    );
  }
}
