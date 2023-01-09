import 'package:coffee_shop_sean/responsive/desktop_body.dart';
import 'package:coffee_shop_sean/responsive/mobile_body.dart';
import 'package:coffee_shop_sean/responsive/responsive_layout.dart';
import 'package:coffee_shop_sean/view/main/main_view.dart';
import 'package:coffee_shop_sean/view/nav-bar/navigation_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            height: height / 11,
            child: NavigationView(),
          ),
          Container(
            height: height / 1.1,
            width: width,
            child: MainView(),
          ),
        ],
      ),
    );
  }
}
