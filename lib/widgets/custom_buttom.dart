import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final TextStyle style;
  final borderRadius;

  MyCustomButton({
    required this.onPressed,
    required this.buttonText,
    required this.style,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          minimumSize: const Size.fromHeight(48)),
      child: Text(
        buttonText,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
