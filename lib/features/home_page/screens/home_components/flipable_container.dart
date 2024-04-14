
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class FlipContainer extends StatefulWidget {
  final Widget frontChild;
  final Widget backChild;

  const FlipContainer({super.key, required this.frontChild, required this.backChild});

  @override
  _FlipContainerState createState() => _FlipContainerState();
}

class _FlipContainerState extends State<FlipContainer> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        onEnter: (_) => onHover(true),
        onExit: (_) => onHover(false),
        child: AnimatedSwitcher(
          switchInCurve: Curves.easeInQuad,
          switchOutCurve: Curves.easeOutQuad,
          duration: const Duration(milliseconds: 500),
          child: isHovered ? widget.backChild : widget.frontChild,
        ),
      ),
    );
  }

  void onHover(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}