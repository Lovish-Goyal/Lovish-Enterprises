import 'package:flutter/material.dart';

// for light screen 
class TextbuttonDark extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const TextbuttonDark({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) return Colors.white;
            return Colors.black;
          }),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16
          ),
        ));
  }
}

// for dark Screen
class Textbuttonlight extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const Textbuttonlight({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) return Colors.blue;
            return Colors.white;
          }),
        ),
        child: Text(
          text,
        ));
  }
}