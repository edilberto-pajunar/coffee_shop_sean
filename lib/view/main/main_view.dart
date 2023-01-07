import 'package:coffee_shop_sean/constant/image_string.dart';
import 'package:coffee_shop_sean/utils/button_card.dart';
import 'package:coffee_shop_sean/utils/serve_with_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
          child: Row(
            children: [CoffeeItem()],
          ),
        ),
      ),
    );
  }
}

class CoffeeItem extends StatelessWidget {
  CoffeeItem({super.key});

  final List rate_list = [
    "false",
    "false",
    "false",
    "false",
    "false",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 100.0),
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Caramel Ribbon",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 70,
              ),
            ),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    child: ListBody(
                      mainAxis: Axis.horizontal,
                      children: [
                        Icon(
                          Icons.star_border,
                        ),
                        Icon(
                          Icons.star_border,
                        ),
                        Icon(
                          Icons.star_border,
                        ),
                        Icon(
                          Icons.star_border,
                        ),
                        Icon(
                          Icons.star_border,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "\$35.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 550,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit",
                style: TextStyle(),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Serve with",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ServeWithCard();
                  }),
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      ButtonCard(
                        icon: Icons.arrow_drop_up,
                        border: Border(
                          right: BorderSide(
                            width: 1.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 25,
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      ButtonCard(
                        icon: Icons.arrow_drop_down,
                        border: Border(
                          left: BorderSide(
                            width: 1.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text("Add to Cart"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
