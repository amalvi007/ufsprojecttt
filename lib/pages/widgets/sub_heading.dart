import 'package:flutter/material.dart';

class SubHeading extends StatelessWidget {
  final String text;
  const SubHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Color(0xFF294C73), fontWeight: FontWeight.w600),

                  ),
                )
             
              ],
            );
  }
}