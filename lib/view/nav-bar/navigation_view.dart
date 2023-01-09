import 'package:coffee_shop_sean/constant/image_string.dart';
import 'package:flutter/material.dart';

import '../../utils/on_hover_button.dart';

class NavigationView extends StatelessWidget {
  NavigationView({super.key});

  final List nav_list = [
    "Menu",
    "Trending",
    "Rewards",
    "Gift Cards",
    "About",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Row(
        children: [
          CircleAvatar(
            child: Image(
              image: AssetImage(
                tCoffeeLogo,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Coffee Name".toUpperCase(),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 500,
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(
                  vertical: 30.0,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: nav_list.length,
                itemBuilder: (context, index) {
                  return NavigationList(
                    text: nav_list[index],
                    onTap: () {},
                  );
                }),
          ),
          SizedBox(
            width: 200,
          ),
          Container(
            width: 200,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Material(
                      child: InkWell(
                        highlightColor: Colors.grey.withOpacity(0.3),
                        onTap: () {
                          print("clicked!");
                        },
                        child: Ink(
                          color: Colors.grey[900],
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Icon(Icons.people),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.shop),
        ],
      ),
    );
  }
}

class NavigationList extends StatelessWidget {
  final String text;
  VoidCallback onTap;
  NavigationList({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: OnHoverButton(builder: (isHovered) {
        final color = isHovered ? Colors.orange : Colors.black;

        return InkWell(
          onTap: onTap,
          child: Text(
            text,
            style: TextStyle(
              color: color,
            ),
          ),
        );
      }),
    );
  }
}
