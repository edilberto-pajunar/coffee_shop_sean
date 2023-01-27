import 'package:coffee_shop_sean/constant/colors.dart';
import 'package:coffee_shop_sean/constant/image_string.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Coffee\nThe Best For You",
              style: TextStyle(
                fontSize: 54,
                color: tPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("View Menu"),
              style: ElevatedButton.styleFrom(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: tPrimaryColor,
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                CoffeeIcon(
                  icon: FontAwesomeIcons.mugHot,
                ),
                SizedBox(
                  width: 15,
                ),
                CoffeeIcon(
                  icon: FontAwesomeIcons.mugSaucer,
                ),
                SizedBox(
                  width: 15,
                ),
                CoffeeIcon(
                  icon: FontAwesomeIcons.beerMugEmpty,
                ),
                SizedBox(
                  width: 15,
                ),
                CoffeeIcon(
                  icon: FontAwesomeIcons.hotjar,
                ),
              ],
            ),
          ],
        ),
        Center(
          child: Image.asset(
            tCoffeeBody,
            height: 500,
            width: 500,
          ),
        ),
      ],
    );
  }
}

class CoffeeIcon extends StatelessWidget {
  final IconData icon;
  const CoffeeIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.brown.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: FaIcon(
          icon,
          color: tPrimaryColor,
        ),
      ),
    );
  }
}
