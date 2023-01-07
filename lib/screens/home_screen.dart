import 'package:coffee_shop_sean/view/main/main_view.dart';
import 'package:coffee_shop_sean/view/navigation_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavigationView(),
          MainView(),
        ],
      ),
    );
  }
}
