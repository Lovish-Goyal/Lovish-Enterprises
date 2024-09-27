import 'package:flutter/material.dart';

class DrawerContainer extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const DrawerContainer({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 300,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Center(child: Text(text)),
      ),
    );
  }
}
