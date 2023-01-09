import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee_shop_sean/constant/image_string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DisplayCoffee extends StatefulWidget {
  DisplayCoffee({super.key});

  @override
  State<DisplayCoffee> createState() => _DisplayCoffeeState();
}

class _DisplayCoffeeState extends State<DisplayCoffee> {
  int activeIndex = 0;
  final coffee_list = [
    tMochaCoffee,
    tMochaCoffee,
    tMochaCoffee,
    tMochaCoffee,
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              15.0,
            ),
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 300, vertical: 50),
              child: Column(
                children: [
                  Container(
                    width: 500,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                      "Espresso Based",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      CarouselSlider.builder(
                        itemCount: coffee_list.length,
                        itemBuilder: ((context, index, realIndex) {
                          final urlImage = coffee_list[index];
                          return buildImage(urlImage, index);
                        }),
                        options: CarouselOptions(
                            height: 250,
                            autoPlay: false,
                            enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                            autoPlayInterval: Duration(
                              seconds: 2,
                            ),
                            viewportFraction: 1,
                            onPageChanged: ((index, reason) =>
                                setState(() => activeIndex = index))),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      buildIndicator(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: coffee_list.length,
      );
}

Widget buildImage(String urlImage, int index) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey[600],
      shape: BoxShape.circle,
    ),
    child: Image(
      image: AssetImage(urlImage),
    ),
  );
}
