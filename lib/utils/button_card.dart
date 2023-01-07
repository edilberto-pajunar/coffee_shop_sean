import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  final IconData icon;
  final Border border;
  const ButtonCard({super.key, required this.icon, required this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        border: border,
      ),
      child: Icon(icon),
    );
  }
}
