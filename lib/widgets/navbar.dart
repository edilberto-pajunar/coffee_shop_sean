import 'package:coffee_shop_sean/constant/colors.dart';
import 'package:coffee_shop_sean/constant/image_string.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          tLogo,
          width: 50,
        ),
        SizedBox(
          width: 300,
        ),
        Row(
          children: [
            NavHome(
              text: "Home",
              onTap: () {},
            ),
            NavHome(
              text: "Coffee Menu",
              onTap: () {},
            ),
            NavHome(
              text: "About Us",
              onTap: () {},
            ),
            NavHome(
              text: "Contact Us",
              onTap: () {},
            ),
            SizedBox(
              width: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Coffee Shop"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                backgroundColor: Color(0xFF440004),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class NavHome extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const NavHome({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 50.0),
        child: Text(
          text,
          style: TextStyle(
            color: tPrimaryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
