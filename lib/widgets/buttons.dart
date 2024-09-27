import 'package:flutter/material.dart';

// for light screen
class TextbuttonDark extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const TextbuttonDark(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          textStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (Set<MaterialState> states) {
              return const TextStyle(
                fontWeight: FontWeight.bold,
              );
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) return Colors.white;
            return const Color.fromARGB(255, 45, 68, 79);
          }),
        ),
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ));
  }
}

class Textbuttonlight extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const Textbuttonlight(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered))
              return Color.fromARGB(255, 45, 68, 79);
            return Colors.white;
          }),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
          ),
        ));
  }
}
