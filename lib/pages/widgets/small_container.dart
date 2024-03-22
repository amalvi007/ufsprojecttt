import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {
  final String text;
  final Color color;
  const SmallContainer({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
          width: 150,
          height: 90,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text),
          )),
    );
  }
}
