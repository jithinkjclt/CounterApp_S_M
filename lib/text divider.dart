import 'package:flutter/material.dart';

class Textfil extends StatelessWidget {
  const Textfil({super.key, required this.size, required this.text});

  final double size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: .5,
            color: Colors.black26,
            width: size,
          ),
          Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.black38),
          ),
          // Divider(color: Colors.black),
          Container(
            height: .5,
            color: Colors.black26,
            width: size,
          )
        ],
      ),
    );
  }
}
