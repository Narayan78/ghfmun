
import 'package:flutter/material.dart';

class FlipContainer extends StatefulWidget {
  final Widget frontChild;
  final Widget backChild;

  const FlipContainer({Key? key, required this.frontChild, required this.backChild})
      : super(key: key);

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