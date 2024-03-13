// customText.dart
import 'package:flutter/material.dart';
import 'package:taskify/components/constantPage.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;

  const CustomText({
    required this.text,
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: kDark,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
