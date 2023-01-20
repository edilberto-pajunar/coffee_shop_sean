import 'package:coffee_shop_sean/constant/color.dart';
import 'package:coffee_shop_sean/constant/image_string.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: [
          Image(
            height: 50,
            width: 50,
            image: AssetImage(
              tCoffeeLogo,
            ),
          ),
          Text(
            "Starbucks".toUpperCase(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          MenuItem(
            text: "Menu",
            onTap: () {},
          ),
          MenuItem(
            text: "Trending",
            onTap: () {},
          ),
          MenuItem(
            text: "Rewards",
            onTap: () {},
          ),
          MenuItem(
            text: "Gift Cards",
            onTap: () {},
          ),
          MenuItem(
            text: "About",
            onTap: () {},
          ),
          Spacer(),
          Icon(
            Icons.shop_2_outlined,
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const MenuItem({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: tTextColor.withOpacity(0.3),
          ),
        ),
      ),
    );
  }
}
