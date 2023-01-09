import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';

class OnHoverButton extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHoverButton({super.key, required this.builder});

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()
      ..scale(1.2)
      ..translate(0, -8, 0);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        curve: Sprung.overDamped,
        child: widget.builder(isHovered),
        duration: Duration(
          milliseconds: 200,
        ),
        transform: transform,
      ),
    );
  }

  void onEntered(bool isHovered) {
    return setState(() {
      this.isHovered = isHovered;
    });
  }
}
