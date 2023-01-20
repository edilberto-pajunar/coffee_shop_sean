import 'package:coffee_shop_sean/components/body/body.dart';
import 'package:coffee_shop_sean/components/nav_bar.dart';
import 'package:coffee_shop_sean/constant/image_string.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(tCoffeeBg),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavBar(),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}
