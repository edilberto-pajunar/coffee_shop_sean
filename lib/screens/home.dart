import 'dart:ui';

import 'package:coffee_shop_sean/constant/image_string.dart';
import 'package:coffee_shop_sean/widgets/navbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              tBackground,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 30,
            sigmaY: 30,
          ),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 250, vertical: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white60,
                  Colors.white30,
                ],
              ),
              border: Border.all(
                width: 2,
                color: Colors.white30,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Navbar(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
