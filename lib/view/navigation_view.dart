import 'package:flutter/material.dart';

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
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0),
        child: Row(
          children: [
            Icon(
              Icons.star,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Starbucks".toUpperCase(),
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
                    return NavigationList(text: nav_list[index]);
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
                      child: Container(
                        color: Colors.grey[700],
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
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
      ),
    );
  }
}

class NavigationList extends StatelessWidget {
  final String text;
  const NavigationList({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: Text(text),
    );
  }
}
