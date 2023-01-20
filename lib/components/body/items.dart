import 'package:coffee_shop_sean/constant/color.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        25.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Caramel Macchiato",
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  color: tTextColor,
                ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Rating(),
                    Rating(),
                    Rating(),
                    Rating(),
                    Rating(),
                  ],
                ),
              ),
              Text(
                "\$89.00",
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
          SizedBox(
            width: 550,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco",
              style: TextStyle(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Serve with",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              ServeWith(),
              ServeWith(),
              ServeWith(),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Quantity(),
              SizedBox(
                width: 30,
              ),
              SizedBox(
                height: 80,
                width: 200,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      width: 1.0,
                      color: Colors.brown.shade400,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    backgroundColor: Colors.brown[300],
                  ),
                  onPressed: () {},
                  label: Text(
                    "Add to Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  icon: Icon(
                    Icons.arrow_circle_right,
                    size: 54,
                  ),
                ),
              ),
              // Container(
              //   height: 80,
              //   width: 200,
              //   decoration: BoxDecoration(
              //     color: Colors.brown[600],
              //     borderRadius: BorderRadius.circular(15.0),
              //   ),
              //   child: Center(
              //     child: Text(
              //       "Add to Cart",
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 20,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star_outlined,
    );
  }
}

class ServeWith extends StatelessWidget {
  const ServeWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          CircleAvatar(
            child: Text("1"),
            backgroundColor: Colors.white,
            radius: 30,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Donut".toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class Quantity extends StatelessWidget {
  const Quantity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
            child: Icon(
              Icons.arrow_upward,
            ),
          ),
          Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
            child: Center(child: Text("1")),
          ),
          Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(),
            child: Icon(
              Icons.arrow_downward,
            ),
          ),
        ],
      ),
    );
  }
}
