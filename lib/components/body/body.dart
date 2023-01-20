import 'package:coffee_shop_sean/components/body/items.dart';
import 'package:coffee_shop_sean/components/body/main_item.dart';
import 'package:coffee_shop_sean/components/body/side_items.dart';
import 'package:coffee_shop_sean/constant/color.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Items(),
          Spacer(),
          MainItem(),
          Spacer(),
          SideItems(),
        ],
      ),
    );
  }
}
