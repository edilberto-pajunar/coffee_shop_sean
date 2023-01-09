import 'package:coffee_shop_sean/utils/coffee_rating.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/button_card.dart';
import '../../utils/serve_with_card.dart';

class CoffeeItem extends StatelessWidget {
  CoffeeItem({super.key});

  final List rating_list = [
    true,
    true,
    true,
    true,
    false,
  ];

  final List desc_list = [
    // [title, description]
    [
      "Sippy cups",
      "Are the New Norm for Iced coffee",
    ],
    [
      "Donut",
      "Have a donut with the frappuccino",
    ],
    [
      "Cookies",
      "Enjoy our sugar free cookies",
    ],
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
                    width: 150,
                    child: (ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: rating_list.length,
                      itemBuilder: (context, index) {
                        return CoffeeRating(
                          icon: rating_list[index]
                              ? Icons.star_outlined
                              : Icons.star_outline_sharp,
                        );
                      },
                    )),
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
            Text(
              "Description",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 550,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercit",
                style: TextStyle(
                  fontSize: 16,
                ),
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
                    return ServeWithCard(
                      title: desc_list[index][0],
                      description: desc_list[index][1],
                    );
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
