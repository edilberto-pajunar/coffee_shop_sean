import 'package:coffee_shop_sean/view/nav-bar/navigation_view.dart';
import 'package:flutter/material.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavigationView(),
        ],
      ),
    );
  }
}
