import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double borderRadius;
  final String buttonText;
  final TextStyle style;

  MyCustomButton({
    required this.onPressed,
    required this.borderRadius,
    required this.buttonText,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          minimumSize: const Size.fromHeight(48)),
      child: Text(buttonText),
    );
  }
}
