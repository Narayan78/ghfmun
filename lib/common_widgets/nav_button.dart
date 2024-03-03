import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final buttonText;
  final VoidCallback onPressed;
  const NavigationButton(
      {super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      //onHover: (value) {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
